package Pod::WSDL2::Param;

use strict;
use warnings;

use Pod::WSDL2::Doc;

our $VERSION='0.5';

use base("Class::Accessor::Fast");
__PACKAGE__->mk_ro_accessors(qw(name type paramType descr array simple optional));

sub new {
	my ($pkg, $str) = @_;

	defined $str or $str = ''; # avoids warnings, dies soon
	
	my ($name,$type,$descr,$array,$paramType,$simple,$optional);
	if (ref($str) eq "HASH") {
		$name      = $str->{'name'};
		$type      = $str->{'type'};
		$descr     = $str->{'docs'};
		$array     = $str->{'multiple'};
		$paramType = $str->{'input_type'};
		$simple    = $str->{'simple'};
		$optional  = $str->{'optional'};

		$paramType =~ s/^_//;
	}
	else {
		$str =~ s/\s*_(INOUT|IN|OUT)\s*//i or die "Input string '$str' does not begin with '_IN', '_OUT' or '_INOUT'";
		$paramType = $1;
	
		($name, $type, $descr) = split /\s+/, $str, 3;

		$type =~ /([\$\@])(.+)/;
		$array = ($1 eq '@')?1:0;
		$type  = $2;

		$type ||= ''; # avoids warnings, dies soon

		die "Type '$type' must have structure (\$|@)<typename>, e.g. '\$boolean' or '\@string', not '$type' died" unless $1 and $2;
	}
	
	bless {
		name      => $name,
		type      => $type,
		paramType => $paramType,
		descr     => $descr || '',
		array     => $array,
		simple    => $simple,
		optional  => $optional
	}, $pkg;
}

1;
__END__

=head1 NAME

Pod::WSDL2::Param - Represents the WSDL pod for a parameter of a method (internal use only)

=head1 SYNOPSIS

  use Pod::WSDL2::Param;
  my $param = new Pod::WSDL2::Param('_IN myParam $string This parameter is for blah ...');

=head1 DESCRIPTION

This module is used internally by Pod::WSDL2. It is unlikely that you have to interact directly with it. If that is the case, take a look at the code, it is rather simple.

=head1 METHODS

=head2 new

Instantiates a new Pod::WSDL2::Param. The method needs one parameter, the _IN, _OUT or _INOUT string from the pod. Please see SYNOPSIS or the section "Pod Syntax" in the description of Pod::WSDL2.

=head1 EXTERNAL DEPENDENCIES

  [none]

=head1 EXAMPLES

see Pod::WSDL2

=head1 BUGS

see Pod::WSDL2

=head1 TODO

see Pod::WSDL2

=head1 SEE ALSO

  Pod::WSDL2
 
=head1 AUTHOR

Tarek Ahmed, E<lt>bloerch -the character every email address contains- oelbsk.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006 by Tarek Ahmed

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.5 or,
at your option, any later version of Perl 5 you may have available.

=cut
