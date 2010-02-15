#!/usr/bin/perl

use strict;
use warnings;
use Pod::WSDL2;

my $p = new Pod::WSDL2(source => 'My::AxisTest', 
	location => 'http://localhost/My/AxisTest',
	pretty => 1,
	withDocumentation => 1);
	
print $p->WSDL;
