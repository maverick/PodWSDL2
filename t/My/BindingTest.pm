package My::BindingTest;

=begin WSDL
_DOC bla bla

_IN in $string
_FAULT My::Foo
_RETURN $string

=cut

sub testGeneral {}

=begin WSDL

_IN in @string
_ONEWAY

=cut

sub testOneway {}

sub testWithoutPod {}

1;
