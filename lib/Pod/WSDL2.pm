package Pod::WSDL2;

# TODO: make array based objects work as own complex types
# TODO: non RPC style bindings
# TODO: read type information alternatively from own file
# TODO: write soapAction attribute in operations?

use strict;
use warnings;

use Carp;
use IO::Scalar;
use Pod::Text;
use Pod::WSDL2::Method;
use Pod::WSDL2::Return;
use Pod::WSDL2::Param;
use Pod::WSDL2::Fault;
use Pod::WSDL2::Doc;
use Pod::WSDL2::Type;
use Pod::WSDL2::Writer;
use Pod::WSDL2::Utils qw(:writexml :namespaces :messages :types);

use Pod::WSDL2::Parser;

# -------------------------------------------------------------------------- #
# ------------------ > "CONSTANTS" ----------------------------------------- #
# -------------------------------------------------------------------------- #

our $VERSION = "0.07";

our $WSDL_METHOD_REGEXP_BEG = qr/^=(?:begin)\s+wsdl\s*\n(.*?)^=(?:cut|end\s+wsdl).*?^\s*sub\s+(\w+)/ims;
our $WSDL_METHOD_REGEXP_FOR = qr/^=(?:for)\s+wsdl\s*\n(.*?)\n\n^\s*sub\s+(\w+)/ims;
our $WSDL_TYPE_REGEXP_BEG   = qr/^=(?:begin)\s+wsdl\s*\n(.*?_ATTR.*?)^=(?:cut|end\s+wsdl)/ims;
our $WSDL_TYPE_REGEXP_FOR   = qr/^=(?:for)\s+wsdl\s*\n(.*?_ATTR.*?)\n\n/ims;

our $DEFAULT_BASE_NAME      = 'myService';
our $PORT_TYPE_SUFFIX_NAME  = ''; # 'Handler';
our $BINDING_SUFFIX_NAME    = 'SoapBinding';
our $SERVICE_SUFFIX_NAME    = 'Service';

use base("Class::Accessor::Fast");
__PACKAGE__->mk_accessors(qw(baseName location targetNS));
__PACKAGE__->mk_ro_accessors(qw(source methods namespaces generateNS types writer 
                                standardTypeArrays emptymessagewritten use style wrapped));

# -------------------------------------------------------------------------- #
# --------------- > PUBLIC METHODS  ---------------------------------------- #
# -------------------------------------------------------------------------- #

sub new {
	my ($pkg, %data) = @_;
	my $nsnum = 0;
	
	croak "I need a location, died" unless defined $data{location};
	croak "I need a file or module name or a filehandle, died" unless defined $data{source};
	
	$data{use} = $LITERAL_USE 
		if $data{style} and 
			$data{style} eq $DOCUMENT_STYLE and 
			!defined $data{use};

	$data{use} = $LITERAL_USE and $data{style} = $DOCUMENT_STYLE 
		if $data{wrapped} and 
			!defined $data{use} and 
			!defined $data{style};

	my $me = bless {
		source              => $data{source},
		baseName            => undef,
		methods             => [],
		location            => $data{location},
		namespaces          => {},
		targetNS            => undef,
		generateNS          => sub {return $DEFAULT_NS_DECL . $nsnum++},
		types               => {},
		writer              => new Pod::WSDL2::Writer(withDocumentation => $data{withDocumentation}, pretty => $data{pretty}),
		standardTypeArrays  => {},
		emptymessagewritten => 0,
		use                 => $data{use} || $ENCODED_USE,
		style               => $data{style} || $RPC_STYLE,
		wrapped             => $data{wrapped} || 0,
	}, $pkg;

	croak "'use' argument may only be one of $ENCODED_USE or $LITERAL_USE, died" if $me->use ne $ENCODED_USE and $me->use ne $LITERAL_USE; 
	croak "'style' argument may only be one of $RPC_STYLE or $DOCUMENT_STYLE, died" if $me->style ne $RPC_STYLE and $me->style ne $DOCUMENT_STYLE;
	croak "The combination of use=$ENCODED_USE and style=$DOCUMENT_STYLE is not valid, died" if ($me->style eq $DOCUMENT_STYLE and $me->use eq $ENCODED_USE);

	## AHICOX 10/12/2006
	## this is a quick and dirty hack to set the baseName
	## the baseName should probably be set from the POD 
	## source (which is why it's set in _getModuleCode)
	## this quick hack takes the 'name' parameter when
	## we create the object, and 
	
	$me->_initSource($data{'source'});
	$me->_initNS;
	$me->_initTypes;
	
	return $me;	
}

sub WSDL {
	my $me = shift;
	my %args = @_;
	
	my $wr = $me->writer;
	$wr->prepare;

	if (%args) {
		$wr->pretty($args{pretty}) if defined $args{pretty};
		$wr->withDocumentation($args{withDocumentation}) if defined $args{withDocumentation};
	} 
	
	$me->writer->comment("WSDL for " . $me->{location} . " created by " . ref ($me) . " version: $VERSION on " . scalar localtime);
	$me->writer->startTag('wsdl:definitions', targetNamespace => $me->targetNS, %{$me->{namespaces}});
	$me->writer->wrNewLine(2);

	$me->_writeTypes;

	$_->writeMessages($me->types, $me->style, $me->wrapped) for @{$me->methods};

	$me->_writePortType;
	$me->_writeBinding;
	$me->_writeService;

	$me->writer->endTag('wsdl:definitions');
	$me->writer->end;
	return $me->writer->output;
}

sub addNamespace {
	my $me   = shift;
	my $uri  = shift;
	my $decl = shift;
	
	croak "I need a namespace, died" unless defined $uri;
	
	defined $decl or $decl = $me->{generateNS};
	
	$decl = 'xmlns:' . $decl unless $decl =~ /xmlns:/;

	$me->{namespaces}->{$decl} = $uri;
}

# -------------------------------------------------------------------------- #
# ---------------- > INIT METHODS < ---------------------------------------- #
# -------------------------------------------------------------------------- #

sub _initNS {
	my $me         = shift;
	my $namespaces = shift;	
	
	$namespaces ||= {};
	
	$me->addNamespace($namespaces->{$_}, $_) for keys %$namespaces;
	$me->addNamespace($BASIC_NAMESPACES{$_}, $_) for keys %BASIC_NAMESPACES;
	$me->addNamespace($me->targetNS, $IMPL_NS_DECL);
	$me->addNamespace($me->targetNS, $TARGET_NS_DECL);
}

sub _initSource {
	my $me  = shift;	
	my $src = shift;
	
	my ($baseName, $contents) = $me->_getModuleCode($src, 1);
	
	#set the baseName in the object
	$me->baseName($baseName);

	# find =begin wsdl ... =end
	while ($contents =~ /$WSDL_METHOD_REGEXP_BEG/g) {
		$me->_parseMethodPod($2, $1);
	}

	# find =for wsdl
	while ($contents =~ /$WSDL_METHOD_REGEXP_FOR/g) {
		$me->_parseMethodPod($2, $1);
	}
}

sub _initTypes {
	my $me = shift;

	for my $method (@{$me->{methods}}) {
		for my $param (@{$method->params},$method->return) {
			next unless $param;

			if ($param->complex) {
				$param->{type} = $me->_addComplexType($method->name,$param);
			}
			else {
				if (!exists $XSD_STANDARD_TYPE_MAP{$param->type}) {				
					$me->_addType($param->type, $param->array);
				}
				elsif ($param->array) {
					#AHICOX: 10/10/2006
					#changed to _standardTypeArrays (was singular)
					$me->{standardTypeArrays}->{$param->type} = 1;
				}
			}
		}

		for my $fault (@{$method->faults}) {
			if ($fault->complex) {
				$fault->{type} = $me->_addComplexType($method->name,$fault);
			}
			elsif (!exists $XSD_STANDARD_TYPE_MAP{$fault->type}) {
				$me->_addType($fault->type, 0);
			}
		}
	}
}

sub _addComplexType {
	my $me         = shift;
	my $methodName = shift;
	my $param      = shift;
	my $postfix    = shift;

	my $name = join("",map { ucfirst($_) } $methodName, $postfix || $param->name);

	$me->types->{$name} = new Pod::WSDL2::Type(name => $name, array => $param->array, attrs => $param->attrs);
	
	for my $attr (@{$me->types->{$name}->attrs}) {
		next unless ref($attr) =~ /::/;

		if ($attr->complex) {
			$attr->{type} = $me->_addComplexType($name,$attr,$postfix);
		}
		if (!exists $XSD_STANDARD_TYPE_MAP{$attr->type}) {
			$me->_addType($attr->type, $attr->array);
		}
		elsif ($attr->array) {
			#AHICOX: 10/10/2006
			#changed to _standardTypeArrays (was singular)
			$me->{standardTypeArrays}->{$attr->type} = 1;
		}
	}
	return $name;
}

sub _addType {
	my $me    = shift;
	my $name  = shift;
	my $array = shift;
	
	if (exists $me->types->{$name}) {
		$me->types->{$name}->array($array) if $array;
		return;	
	}
	
	my $code = $me->_getModuleCode($name);
	my $pod = '';
	my $in = $code;
	my $out = '';
	
	# collect =begin wsdl ... =end
	while ($code =~ /$WSDL_TYPE_REGEXP_BEG/g) {
		$pod .= "$1\n";
	}
	
	# collect =for wsdl
	while ($code =~ /$WSDL_TYPE_REGEXP_FOR/g) {
		$pod .= "$1\n";
	}

	warn "No pod wsdl found for type '$name'.\n" unless $pod;

	my $IN  = new IO::Scalar \$in;
	my $OUT = new IO::Scalar \$out;
		
	new Pod::Text()->parse_from_filehandle($IN, $OUT);
		
	$me->types->{$name} = new Pod::WSDL2::Type(name => $name, array => $array, pod => $pod, descr => $out);
	
	for my $attr (@{$me->types->{$name}->attrs}) {
		if (!exists $XSD_STANDARD_TYPE_MAP{$attr->type}) {
			$me->_addType($attr->type, $attr->array);
		}
		elsif ($attr->array) {
			#AHICOX: 10/10/2006
			#changed to _standardTypeArrays (was singular)
			$me->{standardTypeArrays}->{$attr->type} = 1;
		}
	}
}

sub _parseMethodPod {
	my $me         = shift;
	my $methodName = shift;
	my $podData    = shift;
	
	my $method = new Pod::WSDL2::Method(name => $methodName, writer => $me->writer);

	my $parser = Pod::WSDL2::Parser->new();

	my $data = $parser->wsdlblock($podData) || die "Parse Failed: $!\n".$podData;

	$method->oneway($data->{oneway});

	if ($data->{docs}) {
		$method->doc($data->{docs});
	}

	if ($data->{return}) {
		my $return = $data->{return};
		$method->return($return);
		$me->standardTypeArrays->{$return->type} = 1 if $return->array and $XSD_STANDARD_TYPE_MAP{$return->type};
	}

	foreach my $param (@{$data->{inputs}}) {
		$method->addParam($param);
		$me->standardTypeArrays->{$param->type} = 1 if $param->array and $XSD_STANDARD_TYPE_MAP{$param->type};
	}

	foreach my $fault (@{$data->{faults}}) {
		$method->addFault($fault);
	}

	push @{$me->{methods}}, $method;
}

sub _getModuleCode {
	my $me     = shift;
	my $src    = shift;
	my $findNS = shift;
	
	if (ref $src and ($src->isa('IO::Handle') or $src->isa('GLOB'))) {
		local $/ = undef;
		my $contents = <$src>;
		$me->_setTargetNS($contents) if $findNS;
		
		##AHICOX: 10/12/2006
		##attempt to construct a base name based on the package
		my $baseName = $DEFAULT_BASE_NAME;
		$src =~ /package\s+(.*?)\s*;/s;
		if ($1){
			$baseName = $1;
			$baseName =~ s/::(.)/uc $1/eg;
		}
		
		return ($baseName, $contents);
	}
	else {
		my $moduleFile;
		
		if (-e $src) {
			$moduleFile = $src;
		}
		else {
			my $subDir = $src;
			$subDir =~ s!::!/!g;
		
			my @files = map {"$_/$subDir.pm"} @INC;
			
			my $foundPkg = 0;
			
			for my $file (@files) {
				if (-e $file) {
					$moduleFile = $file;
					last;
				}
			}
		}
	
		if ($moduleFile) {
			open IN, $moduleFile or die "Could not open $moduleFile, died";
			local $/ = undef;
			my $contents = <IN>;
			close IN;
			$me->_setTargetNS($contents) if $findNS;
			
			##AHICOX: 10/12/2006
			##attempt to construct a base name based on the package
			my $baseName = $DEFAULT_BASE_NAME;
			$contents =~ /package\s+(.*?)\s*;/s;
			if ($1){
				$baseName = $1;
				$baseName =~ s/::(.)/uc $1/eg;
			}
			
			return ($baseName, $contents);
		}
		else {
			die "Can't find any file '$src' and can't locate it as a module in \@INC either (\@INC contains " . join (" ", @INC) . "), died";	
		}
	}
}

sub _setTargetNS {
	my $me = shift;	
	my $contents = shift;

	$contents =~ /package\s+(.*?)\s*;/s;

	if ($1) {
		my $tmp = $1;
		$tmp =~ s!::!/!g;
		my $serverURL = $me->location;
		$serverURL =~ s!(http(s)??://[^/]*).*!$1!;
		$me->targetNS("$serverURL/$tmp");
	}
	else {
		$me->targetNS($me->location);
	}
}

# -------------------------------------------------------------------------- #
# -------------- > OUTPUT UTILITIES < -------------------------------------- #
# -------------------------------------------------------------------------- #

sub _writeTypes {
	my $me = shift;

	return if keys %{$me->standardTypeArrays} == 0 and keys %{$me->types} == 0;

	$me->writer->wrElem($START_PREFIX_NAME, 'wsdl:types');
	$me->writer->wrElem($START_PREFIX_NAME, 'schema', targetNamespace => $me->namespaces->{'xmlns:' . $TARGET_NS_DECL}, xmlns => "http://www.w3.org/2001/XMLSchema");
	$me->writer->wrElem($EMPTY_PREFIX_NAME, "import",  namespace => "http://schemas.xmlsoap.org/soap/encoding/");
	
	for my $type (sort keys %{$me->standardTypeArrays}) {
		$me->writer->wrElem($START_PREFIX_NAME, "complexType",  name => $ARRAY_PREFIX_NAME . ucfirst $type);
		$me->writer->wrElem($START_PREFIX_NAME, "complexContent");
		$me->writer->wrElem($START_PREFIX_NAME, "restriction",  base => "soapenc:Array");
		$me->writer->wrElem($EMPTY_PREFIX_NAME, "attribute",  ref => "soapenc:arrayType", "wsdl:arrayType" => 'soapenc:' . $type . '[]');
		$me->writer->wrElem($END_PREFIX_NAME, "restriction");
		$me->writer->wrElem($END_PREFIX_NAME, "complexContent");
		$me->writer->wrElem($END_PREFIX_NAME, "complexType");
	}

	for my $type (values %{$me->types}) {
		$me->_writeComplexType($type);
	}

	if ($me->style eq $DOCUMENT_STYLE) {
		for my $method (@{$me->methods}) {
			$method->writeDocumentStyleSchemaElements($me->types);
		}
	}

	$me->writer->wrElem($END_PREFIX_NAME, 'schema');
	$me->writer->wrElem($END_PREFIX_NAME, 'wsdl:types');
	$me->writer->wrNewLine;
}

sub _writeComplexType {
	my $me   = shift;
	my $type = shift;

	$me->writer->wrElem($START_PREFIX_NAME, "complexType",  name => $type->wsdlName);
	$me->writer->wrDoc($type->descr, useAnnotation => 1);
	
	if ($type->reftype eq 'HASH') {
		
		$me->writer->wrElem($START_PREFIX_NAME, "sequence");
	
		for my $attr (@{$type->attrs}) {
			my %tmpArgs = (
				name => $attr->name, 
				type => Pod::WSDL2::Utils::getTypeDescr(
					$attr->type,
					$attr->array,
					$me->types->{$attr->type}
				)
			);
			
			$tmpArgs{nillable} = $attr->nillable if $attr->nillable;
			
			$me->writer->wrElem($START_PREFIX_NAME, "element", %tmpArgs);
			$me->writer->wrDoc($attr->descr, useAnnotation => 1);
			$me->writer->wrElem($END_PREFIX_NAME, "element");
		}
	
		$me->writer->wrElem($END_PREFIX_NAME, "sequence");
	}
	elsif ($type->reftype eq 'ARRAY') {
		$me->writer->wrElem($START_PREFIX_NAME, "complexContent");
		$me->writer->wrElem($START_PREFIX_NAME, "restriction",  base => "soapenc:Array");
		$me->writer->wrElem($EMPTY_PREFIX_NAME, "attribute",  ref => $TARGET_NS_DECL . ':' . $type->wsdlName, "wsdl:arrayType" => 'xsd:anyType[]');
		$me->writer->wrElem($END_PREFIX_NAME, "restriction");
		$me->writer->wrElem($END_PREFIX_NAME, "complexContent");
	}
	
	$me->writer->wrElem($END_PREFIX_NAME, "complexType");

	if ($type->array) {
		$me->writer->wrElem($START_PREFIX_NAME, "complexType",  name => $ARRAY_PREFIX_NAME . ucfirst $type->wsdlName);
		$me->writer->wrElem($START_PREFIX_NAME, "complexContent");
		$me->writer->wrElem($START_PREFIX_NAME, "restriction",  base => "soapenc:Array");
		$me->writer->wrElem($EMPTY_PREFIX_NAME, "attribute",  ref => "soapenc:arrayType", "wsdl:arrayType" => $TARGET_NS_DECL . ':' . $type->wsdlName . '[]');
		$me->writer->wrElem($END_PREFIX_NAME, "restriction");
		$me->writer->wrElem($END_PREFIX_NAME, "complexContent");
		$me->writer->wrElem($END_PREFIX_NAME, "complexType");
	}
}


sub _writePortType {
	my $me = shift;
	
	$me->writer->wrElem($START_PREFIX_NAME, 'wsdl:portType', name => $me->baseName . $PORT_TYPE_SUFFIX_NAME);

	for my $method (@{$me->{methods}}) {
		$method->writePortTypeOperation;
		$me->writer->wrNewLine;
	}

	$me->writer->wrElem($END_PREFIX_NAME, 'wsdl:portType');
	$me->writer->wrNewLine(1);
}

sub _writeBinding {
	my $me = shift;
	
	$me->writer->wrElem($START_PREFIX_NAME, 'wsdl:binding', name => $me->baseName . $BINDING_SUFFIX_NAME, type => $IMPL_NS_DECL . ':' . $me->baseName . $PORT_TYPE_SUFFIX_NAME);
	$me->writer->wrElem($EMPTY_PREFIX_NAME, "wsdlsoap:binding", style => $me->style, transport => "http://schemas.xmlsoap.org/soap/http");
	$me->writer->wrNewLine;
	
	for my $method (@{$me->methods}) {
		$method->writeBindingOperation($me->targetNS, $me->use);
		$me->writer->wrNewLine;
	}

	$me->writer->wrElem($END_PREFIX_NAME, 'wsdl:binding');
	$me->writer->wrNewLine;
}

sub _writeService {
	my $me = shift;
	
	$me->writer->wrElem($START_PREFIX_NAME, 'wsdl:service', name => $me->baseName . $PORT_TYPE_SUFFIX_NAME . $SERVICE_SUFFIX_NAME);
	$me->writer->wrElem($START_PREFIX_NAME, 'wsdl:port', binding => $IMPL_NS_DECL . ':' . $me->baseName . $BINDING_SUFFIX_NAME, name => $me->baseName);
	$me->writer->wrElem($EMPTY_PREFIX_NAME, "wsdlsoap:address", location => $me->location);
	$me->writer->wrElem($END_PREFIX_NAME, 'wsdl:port');
	$me->writer->wrElem($END_PREFIX_NAME, 'wsdl:service');

	$me->writer->wrNewLine;
}

1;
__END__

=head1 NAME

Pod::WSDL2 - Creates WSDL documents from (extended) pod

=head1 SYNOPSIS

    use Pod::WSDL2;

    my $pod = new Pod::WSDL2(
        source   => 'My::Server', 
        location => 'http://localhost/My/Server',
        pretty   => 1,
        withDocumentation => 1
    );

    print $pod->WSDL;

=head1 DESCRIPTION - How to use Pod::WSDL2

=head2 Parsing the pod

How does Pod::WSDL2 work? If you instantiate a Pod::WSDL2 object with the name of the module (or 
the path of the file, or an open filehandle) providing the web service like this

    my $pwsdl = new Pod::WSDL2(
        source => 'My::Module',
		location => 'http://my.services.location/on/the/web'
    );

Pod::WSDL2 will try to find C<My::Module> in C<@INC>, open the file, parse it for WSDL directives 
and prepare the information for WSDL output. By calling

    $pwsdl->WSDL;

Pod::WSDL2 will output the WSDL document. That's it.

When using Pod::WSDL2, the parser expects you to do the following:

=over 2

=item *

Put the pod directly above the subroutines which the web service's client is going to call. There 
may be whitespace between the pod and the sub declaration but nothing else.

=item *

Use the C<=begin>/C<=end> respectively the C<=for> directives according to standard pod: anything 
between C<=begin WSDL> and C<=end> will be treated as pod. Anything composing a paragraph together 
with C<=for WSDL> will be treated as pod.

=back

Any subroutine not preceeded by WSDL pod will be left unmentioned. Any standard pod will be ignored 
(though, for an exception to this, see the section on own complex types below).

The individual instructions for Pod::WSDL2 always begin with a keyword, like C<_RETURN> or C<_DOC> 
or C<_FAULT>. After this different things may follow, according to the specific type of 
instruction. The instruction may take one or more lines - everything up to the next line beginning 
with a keyword or the end of the pod is belonging to the current instruction.

=head2 Describing Methods

How do we use Pod::WSDL2? In describing a web service's method we have to say something about 
parameters, return values and faults. In addition you might want to add some documentation to these 
items and to the method itself.

=head3 Parameters

WSDL differentiates between in-, out- and inout-parameters, so we do that, too. A different matter 
is the question, if the client can do this too, but now we are talking about possibilities, not 
actualities.

The pod string describing a parameter has the structure

    (_IN|_OUT|_INOUT) NAME ($|@)TYPE DESCRIPTION

like

    _IN foo $string This is a foo

or 

    _INOUT bar @bar An array of bars

You will easily guess what C<_IN>, C<_OUT> and C<_INOUT> stand for so we can move on. C<NAME> is 
the name of your parameter. It does not have any real function (the order of the parameters being 
the only important thing) but it is nice to have it since in a WSDL document the parameters need to 
have names. So instead of having Pod::WSDL2 automatically generate cryptic names (it cannot do that 
right now) be nice to the client and use some sensible name. The C<TYPE> of the parameters can be 
any of the xsd (schema) standard types (see [5]) or a type of your own creation. The C<$> resp. 
C<@> symbols tell Pod::WSDL2 and your client if it is a scalar or array parameter. Everything 
following the type up to the next instruction is treated as the parameter's documentation. If you 
call the constructor of Pod::WSDL2 with the argument C<withDocumentation =E<gt> 1>, it will be 
added to the WSDL.

=head3 Return Values

Return values work like parameters but since in WSDL there is provision for only one return value 
(you have (in)out parameters, or can return arrays if that isn't enough), you do not need to give 
them a name. Pod::WSDL2 will automatically call them 'Return' in the WSDL document. So, the 
structure of C<_RETURN> instructions is

    _RETURN ($|@)TYPE DESCRIPTION

as in

    _RETURN $string Returns a string

The pod for one method may only have one C<_RETURN> instruction. If you don't specify a C<_RETURN> 
instruction, Pod::WSDL2 will assume that you return void. Of course the perl subroutine still will 
return something, but your web service won't. To make this clear Pod::WSDL2 generates an empty 
response message for this.

If you want some method to be a one way operation (see [4], ch. 2.4.1), say so by using the 
instruction C<_ONEWAY> in the pod. In this case no response message will be generated and a 
C<_RETURN> instruction will be ignored.

=head3 Faults

SOAP faults are usually translated into exceptions in languages like Java. If you set up a web 
service using SOAP::Lite, SOAP will trap your dying program and generate a generic fault using the 
message of C<die>. It is also possible to access SOAP::Lite's SOAP::Fault directly if you want more 
control - but this is not our issue. If you want to use custom-made fault messages of your own, 
define them in C<_FAULT> instructions, which look like this:

    _FAULT TYPE DESCRIPTION

An example could be the following:

    _FAULT My::Fault If anything goes wrong

Since you probably won't return an array of fault objects, you do not need to use the C<($|@)> 
tokens. Just say that you return a fault, declare it's type and add an optional description.

As with parameters (but in contrary to C<_RETURN> instructions) you can declare as many C<_FAULT> 
instructions as you like, providing for different exception types your method might throw.

=head3 Method Documentation

Method documentation is easily explained. It's structure is 
  
    _DOC Here comes my documentation ...

That's it. Use several lines of documentation if you like. If you instantiate the Pod::WSDL2 object 
with the parameter C<withDocumentation =E<gt> 1>, it will be written into the WSDL document.

=head2 Describing Modules - Using Own Complex Types

Quite often it will be the case that you have to use complex types as parameters or return values. 
One example of this we saw when talking about faults: you might want to create custom fault types 
(exceptions) of your own to fullfill special needs in the communication between web service and 
client. But of course you also might simply want to pass a complex parameter like a address object 
containing customer data to your application. WSDL provides the means to describe complex types 
borrowing the xsd schema syntax. Pod::WSDL2 makes use of this by allowing you to add WSDL pod to 
your own types. Assuming you have some own type like

    package My::Type;

    sub new {
        bless {
            foo => 'foo',
            bar => -1
        }, $_[0];
    }

    1;

simply describe the keys of your blessed hash like this.

    =begin WSDL

    _ATTR foo $string A foo
    _ATTR bar $integer And a bar

    =end WSDL

Put this pod anywhere within the package My::Type. Pod::WSDL2 will find it (if it is in @INC), 
parse it and integrate it into the WSDL document. The C<_ATTR> instruction works exactly as the 
C<_IN>, C<_OUT> and C<_INOUT> instructions for methods (see above). 

If you initialize the Pod::WSDL2 object using C<withDocumentation =E<gt> 1>, Pod::WSDL2 will look 
for standard pod in the module, parse it using Pod::Text and put it into the WSDL document.

=head1 METHODS

=head2 new

Instantiates a new Pod::WSDL2.

=head3 Parameters

=over 4

=item

source - Name of the source file, package of the source module or file handle on source file for 
which the WSDL shall be generated. This source must contain specialized Pod tags. So, if your 
source is '/some/directory/modules/Foo/Bar.pm' with package declaration 'Foo::Bar', source may be 
'/some/directory/modules/Foo/Bar.pm' or 'Foo::Bar' (in which case '/some/directory/modules' has to 
be in @INC) or an open file handle on the file. Right?

=item

location - Target namespace for the WSDL, usually the full URL of your webservice's proxy.

=item

pretty - Pretty print WSDL, if true. Otherwise the WSDL will come out in one line. The software 
generating the client stubs might not mind, but a person reading the WSDL will!

=item

withDocumentation - If true, put available documentation in the WSDL (see "Pod Syntax" above). For 
used own complex types ('modules') this will be the output of Pod::Text on these modules. The 
software generating the client stubs might give a damn, but a person reading the WSDL won't!

=back

=head2 WSDL

Returns WSDL as string.

=head3 Parameters

=over 4

=item

pretty - Pretty print WSDL, if true. Otherwise the WSDL will come out in one line. The software 
generating the client stubs might not mind, but a person reading the WSDL will!

=item

withDocumentation - If true, put available documentation in the WSDL (see "Pod Syntax" above). For 
used own complex types ('modules') this will be the output of Pod::Text on these modules. The 
software generating the client stubs might give a damn, but a person reading the WSDL won't!

=back

=head2 addNamespace

Adds a namespace. Will be taken up in WSDL's definitions element.

=head3 Parameters

=over 4

=item 1

URI of the namespace

=item 2

Declarator of the namespace

=back

=head1 EXTERNAL DEPENDENCIES

    Carp
    XML::Writer
    IO::Scalar
    Pod::Text
	Parse::RecDescent
	Class::Accessor
  
The test scripts use

    XML::XPath

=head1 EXAMPLES

see the *.t files in the distribution

=head1 BUGS

Please send me any bug reports, I will fix them or mention the bugs here :-)

=head1 TODO

=head2 Describe Several Signatures for one Method

Of course, one subroutine declaration might take a lot of different sets of parameters. In Java or 
C++ you would have to have several methods with different signatures. In perl you fix this within 
the method. So why not put several WSDL pod blocks above the method so the web service's client can 
handle that.

=head2 Handle Several Package Declarations in One File

So far, Pod::WSDL2 assumes a one to one relation between packages and files. If it meets several 
package declarations in one file, it will fail some way or the other. For most uses, one package in 
one file will presumably suffice, but it would be nice to be able to handle the other cases, too.

=head2 Handle Array based blessed References

Array based blessed references used for complex types are something of a problem.

=head2 Integrate Pod::WSDL2 with SOAP::Lite

With Axis, you simply call the web service's URL with the parameter '?wsdl' and you get the WSDL 
document. It would be nice to be able to do this with SOAP::Lite, too.

=head2 Implement Non RPC Style Messages

Pod::WSDL2 writes WSDL documents in encoded RPC style. It should be able to generate literal RPC 
and document styles, too.

=head1 REFERENCES

[1] L<http://ws.apache.org/axis/>

[2] L<http://search.cpan.org/~kbrown/SOAP-0.28/>

[3] L<http://search.cpan.org/~byrne/SOAP-Lite-0.65_5/>

[4] L<http://www.w3.org/TR/wsdl.html>

[5] L<http://www.w3.org/TR/xmlschema-2/>

=head1 SEE ALSO

  http://ws.apache.org/axis/
  http://search.cpan.org/~kbrown/SOAP-0.28/
  http://search.cpan.org/~byrne/SOAP-Lite-0.65_5/
  http://www.w3.org/TR/wsdl
  
  WSDL::Generator (a different way to do it)
  SOAP::WSDL2 (the client side)
  SOAP::Clean::WSDL2 (I have not tried this)
 
=head1 AUTHOR

Tarek Ahmed, E<lt>bloerch -the character every email address contains- oelbsk.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006 by Tarek Ahmed

This library is alpha software and comes with no warranty whatsoever.
It is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.5 or,
at your option, any later version of Perl 5 you may have available.

=cut
