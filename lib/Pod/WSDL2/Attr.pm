package Pod::WSDL2::Attr;
use strict;
use warnings;

our $VERSION = "0.08";

use base("Class::Accessor::Fast");
__PACKAGE__->mk_ro_accessors(qw(name type nillable descr array complex attrs));

sub new {
	my ($pkg, $str) = @_;

	defined $str or $str = ''; # avoids warnings
	my ($name, $type, $needed, $descr, $array, $required, $complex, $attrs);
	if (ref($str)) {
		$name      = $str->{'name'};
		$type      = $str->{'type'};
		$descr     = $str->{'docs'};
		$array     = $str->{'multiple'};
		$required  = $str->{'required'};
		$complex   = $str->{'complex'};
		$attrs     = $str->{'attrs'};
	}
	else {
		my $needed;
		$str =~ s/\s*_ATTR\s*//i or die "Input string '$str' does not begin with '_ATTR'";
		($name, $type, $needed, $descr) = split /\s+/, $str, 4;

		$descr ||= '';
		
		if ((uc $needed) eq '_NEEDED') {
			$required = 1;
		}
		else {
			$descr  = "$needed $descr";
		}
		
		$type =~ /([\$\@])(.*)/;
		die "Type '$type' must be prefixed with either '\$' or '\@', died" unless $1;

		$array = $1 eq '@' ? 1: 0;
		$type  = $2;
	}
	
	bless {
		name     => $name,
		type     => $type,
		nillable => ($required)?undef:'true',
		descr    => $descr,
		array    => $array,
		complex  => $complex,
		attrs    => $attrs
	}, $pkg;
}

1;
__END__

=head1 NAME

Pod::WSDL2::Attr - Represents the WSDL pod for an attribute of a class (internal use only)

=head1 SYNOPSIS

  use Pod::WSDL2::Attr;
  my $attr = new Pod::WSDL2::Attr('_ATTR $string _NEEDED This attribute is for blah ...');

=head1 DESCRIPTION

This module is used internally by Pod::WSDL2. It is unlikely that you have to interact directly with it. If that is the case, take a look at the code, it is rather simple.

=head1 METHODS

=head2 new

Instantiates a new Pod::WSDL2::Attr. The method needs one parameter, the attribute string from the pod. Please see SYNOPSIS or the section "Pod Syntax" in the description of Pod::WSDL2.

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
