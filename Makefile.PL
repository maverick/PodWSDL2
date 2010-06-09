use 5.6.1;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Pod::WSDL2',
    VERSION_FROM      => 'lib/Pod/WSDL2.pm', # finds $VERSION
    PREREQ_PM         => {
    	'Carp'         => 1.03,
    	'Test::More'   => 0.47,
    	'XML::Writer'  => 0.531,
    	'IO::Scalar'   => 2.110,
    	'XML::XPath'   => 1.13,
    	'XML::XPath'   => 1.13,
		'Parse::RecDescent' => 1.94,
		'Class::Accessor' => 0.31,
    	'Pod::Text'    => 2.21},
    ($] >= 5.006 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Pod/WSDL2.pm', # retrieve abstract from module
       AUTHOR         => 'Maverick Edwards <medwards -at- nasba.org>, Tarek Ahmed <bloerch -at- oelbsk.org>') : ()),
);
