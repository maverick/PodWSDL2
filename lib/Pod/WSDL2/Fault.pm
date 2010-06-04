package Pod::WSDL2::Fault;

use strict;
use warnings;
use Data::Dumper;
use Carp;

our $VERSION = "0.05";

use base("Class::Accessor::Fast");
__PACKAGE__->mk_ro_accessors(qw(type descr wsdlName complex attrs));

sub new {
	my ($pkg, $str) = @_;

	$str ||= '' ;  # avoid warnings here, will die soon

	my ($type,$descr,$complex,$attrs);
	if (ref($str) eq "HASH") {
		$type    = $str->{type};
		$descr   = $str->{docs};
		$complex = $str->{complex};
		$attrs   = $str->{attrs};
	}
	else {
		$str =~ s/^\s*_FAULT\s*//i or confess "_FAULT statements must have structure '_FAULT <type> <text>', like '_FAULT My::Fault This is my documentation'";
		($type, $descr) = split /\s+/, $str, 2;

		$descr ||= '';
	}

	my $wsdlName = $type;
	$wsdlName =~ s/::(.)/uc $1/eg;
	
	bless {
		type     => $type,
		descr    => $descr,
		attrs    => $attrs,
		complex  => $complex,
		wsdlName => ucfirst $wsdlName,
	}, $pkg;
}

1;
__END__

=head1 NAME

Pod::WSDL2::Fault - Represents the WSDL pod describing the fault of a method (internal use only)

=head1 SYNOPSIS

  use Pod::WSDL2::Fault;
  my $fault = new Pod::WSDL2::Fault('_FAULT My::Fault This happens if something happens');

=head1 DESCRIPTION

This module is used internally by Pod::WSDL2. It is unlikely that you have to interact directly with it. If that is the case, take a look at the code, it is rather simple.

=head1 METHODS

=head2 new

Instantiates a new Pod::WSDL2::Fault. The method needs one parameter, the fault string from the pod. Please see SYNOPSIS or the section "Pod Syntax" in the description of Pod::WSDL2.

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
