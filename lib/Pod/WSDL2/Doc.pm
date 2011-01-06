package Pod::WSDL2::Doc;

use strict;
use warnings;

our $VERSION = "0.07";

use base("Class::Accessor::Fast");
__PACKAGE__->mk_accessors(qw(descr));

sub new {
	my ($pkg, $str) = @_;

	defined $str or $str = ''; # avoids warnings
	$str =~ s/^\s*_DOC\s*//;
	$str =~ s/^\s+//s;
	$str =~ s/\s+$//s;

	bless {
		descr => $str,
	}, $pkg;
}

1;
__END__

=head1 NAME

Pod::WSDL2::Doc - Represents the WSDL pod for the documentation of methods (internal use only)

=head1 SYNOPSIS

  use Pod::WSDL2::Doc;
  my $doc = new Pod::WSDL2::Doc('_DOC This method is for blah ...');

=head1 DESCRIPTION

This module is used internally by Pod::WSDL2. It is unlikely that you have to interact directly with it. If that is the case, take a look at the code, it is rather simple.

=head1 METHODS

=head2 new

Instantiates a new Pod::WSDL2::Attr. The method needs one parameter, the documentation string from the pod. Please see SYNOPSIS or the section "Pod Syntax" in the description of Pod::WSDL2.

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
