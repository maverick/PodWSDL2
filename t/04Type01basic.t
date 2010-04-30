#!/usr/bin/perl -w
package Pod::WSDL2::Type;

use Test::More tests => 8;
BEGIN {use_ok('Pod::WSDL2::Type')}
use strict;
use warnings;

eval {
	my $a1 = new Pod::WSDL2::Type();
};

ok(defined $@, 'new Type dies, if it does not get a name');

my $t1 = new Pod::WSDL2::Type(name => 'foo', 
	array => 1, 
	descr => 'a description'
);

ok($t1->name eq 'foo', 'Read name argument correctly from input');
ok($t1->array == 1, 'Read array argument correctly from input');
ok($t1->descr eq 'a description', 'Read descr argument correctly from input');

$t1->array(0);
ok($t1->array == 0, 'Setting array member works');

package Main;
use Test::More;

my $t2 = new Pod::WSDL2::Type(name => 'foo', 
	array => 1, 
	descr => 'a description'
);

eval {$t2->name('bar');};
ok(defined $@, 'Type does not allow setting of name');

eval {$t2->descr('blah');};
ok(defined $@, 'Type does not allow setting of descr');
