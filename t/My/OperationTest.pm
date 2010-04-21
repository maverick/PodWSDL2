package My::OperationTest;

=begin WSDL

_DOC bla bla
_IN in $string
_RETURN $string
_FAULT My::Foo

=cut

sub testGeneral {}

=begin WSDL

_IN in $string
_OUT out $string
_INOUT inout $string

=cut

sub testInOut {}

=begin WSDL

_IN in @string
_RETURN @string

=cut

sub testArray {}

=begin WSDL

_IN in @string

=cut

sub testEmpty {}

=begin WSDL

_IN in @string
_ONEWAY

=cut

sub testOneway {}

=begin WSDL

=cut

sub testNoReturnNoParam {}

sub testWithoutPod {}

1;
