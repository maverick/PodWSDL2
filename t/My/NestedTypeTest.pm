package My::NextedTypeTest;

=begin WSDL

_IN foo $My::Baz is my Baz

=cut

sub testNestedComplexTypes {}

=begin WSDL

_IN foo @My::Baz is my Baz
_IN bar @string is a bar

=cut

sub testNestedArrayTypes {}

1;
