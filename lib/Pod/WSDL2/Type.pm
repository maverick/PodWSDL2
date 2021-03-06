package Pod::WSDL2::Type;

use strict;
use warnings;

our $VERSION = "0.08";

use Pod::WSDL2::Attr;
# use Pod::WSDL2::Utils qw(:writexml :namespaces :types);

use base("Class::Accessor::Fast");
__PACKAGE__->mk_ro_accessors(qw(attrs descr wsdlName name reftype));
__PACKAGE__->mk_accessors(qw(array));

sub new {
	my ($pkg, %data) = @_;
	
	die "A type needs a name, died" unless $data{name};

	my $wsdlName = $data{name};
	$wsdlName =~ s/(?:^|::)(.)/uc $1/eg;
	
	my $me = bless {
		name     => $data{name},
		wsdlName => ucfirst $wsdlName,
		array    => $data{array} || 0,
		attrs    => $data{attrs} || [],
		descr    => $data{descr} || '',
		reftype  => $data{reftype} || 'HASH',
	}, $pkg;

	$me->_initPod($data{pod}) if $data{pod};

	return $me;	
}

sub _initPod {
	my $me  = shift;
	my $pod = shift;
	
	my @data = split "\n", $pod;
	
	# Preprocess wsdl pod: trim all lines and concatenate lines not
	# beginning with wsdl type tokens to previous line.
	# Ignore first element, if it does not begin with wsdl type token.
	for (my $i = $#data; $i >= 0; $i--) {
		
		if ($data[$i] !~ /^\s*(?:_ATTR|_REFTYPE)/i) {
			if ($i > 0) {
				$data[$i - 1] .= " $data[$i]";
				$data[$i] = '';
			}
		}
	}

	for (@data) {
		s/\s+/ /g;
		s/^ //;
		s/ $//;

		if (/^\s*_ATTR\s+/i) {
			push @{$me->{attrs}}, new Pod::WSDL2::Attr($_);
		} elsif (/^\s*_REFTYPE\s+(HASH|ARRAY)/i) {
			$me->reftype(uc $1);
		}
	}
}

1;
__END__

=head1 NAME

Pod::WSDL2::Type - Represents a type in Pod::WSDL2 (internal use only)

=head1 SYNOPSIS

  use Pod::WSDL2::Type;
  my $type = new Pod::WSDL2::Param(name => 'My::Foo', array => 0, descr => 'My foo bars');

=head1 DESCRIPTION

This module is used internally by Pod::WSDL2. It is unlikely that you have to interact directly with it. If that is the case, take a look at the code, it is rather simple.

=head1 METHODS

=head2 new

Instantiates a new Pod::WSDL2::Type.

=head3 Parameters

=over 4

=item

name - name of the type, something like 'string', 'boolean', 'My::Foo' etc.

=item

array - if true, an array of the type is used (defaults to 0)

=item

descr - description of the type

=item

pod - the wsdl pod of the type. Please see the section "Pod Syntax" in the description of Pod::WSDL2.

=back

=head2 writeComplexType

Write complex type element for XML output. Takes one parameter: ownTypes, reference to hash with own type information

=head1 EXTERNAL DEPENDENCIES

  [none]

=head1 EXAMPLES

see Pod::WSDL2

=head1 BUGS

see Pod::WSDL2

=head1 TODO

see Pod::WSDL2

=head1 SEE ALSO

  Pod::WSDL2 :-)
 
=head1 AUTHOR

Tarek Ahmed, E<lt>bloerch -the character every email address contains- oelbsk.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006 by Tarek Ahmed

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.5 or,
at your option, any later version of Perl 5 you may have available.

=cut
