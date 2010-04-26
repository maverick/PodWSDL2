package Pod::WSDL2::Parser;
use Parse::RecDescent;

{ my $ERRORS;


package Parse::RecDescent::Pod::WSDL2::Parser;
use strict;
use vars qw($skip $AUTOLOAD  );
@Parse::RecDescent::Pod::WSDL2::Parser::ISA = ();
$skip = '\s*';
 
	use Pod::WSDL2::Doc;
	use Pod::WSDL2::Param;
	use Pod::WSDL2::Return;
	use Pod::WSDL2::Fault;
;


{
local $SIG{__WARN__} = sub {0};
# PRETEND TO BE IN Parse::RecDescent NAMESPACE
*Parse::RecDescent::Pod::WSDL2::Parser::AUTOLOAD   = sub
{
    no strict 'refs';
    $AUTOLOAD =~ s/^Parse::RecDescent::Pod::WSDL2::Parser/Parse::RecDescent/;
    goto &{$AUTOLOAD};
}
}

push @Parse::RecDescent::Pod::WSDL2::Parser::ISA, 'Parse::RecDescent';
# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_hash_element
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_hash_element"};
    
    Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_hash_element]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_hash_element},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{hash, or array, or simple});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [hash]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_hash_element});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_hash_element});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [hash]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_hash_element},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::hash($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [hash]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_hash_element},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [hash]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{hash}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [hash]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [array]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_hash_element});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_hash_element});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [array]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_hash_element},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::array($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [array]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_hash_element},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [array]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{array}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [array]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [simple]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_hash_element});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_hash_element});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [simple]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_hash_element},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::simple($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [simple]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_hash_element},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [simple]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{simple}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [simple]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_hash_element},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_hash_element},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_return_block
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_return_block"};
    
    Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_return_block]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_return_block},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{hash, or array, or simple});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [hash]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_return_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_return_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [hash]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_return_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::hash($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [hash]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_return_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [hash]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{hash}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [hash]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [array]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_return_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_return_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [array]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_return_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::array($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [array]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_return_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [array]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{array}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [array]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [simple]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_return_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_return_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [simple]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_return_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::simple($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [simple]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_return_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [simple]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{simple}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [simple]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_return_block},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_return_block},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::wsdlblock
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"wsdlblock"};
    
    Parse::RecDescent::_trace(q{Trying rule: [wsdlblock]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{wsdlblock},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{doc_line});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [doc_line command_block eofile]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{wsdlblock},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{wsdlblock});
        %item = (__RULE__ => q{wsdlblock});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying repeated subrule: [doc_line]},
                  Parse::RecDescent::_tracefirst($text),
                  q{wsdlblock},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Pod::WSDL2::Parser::doc_line, 0, 100000000, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [doc_line]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{wsdlblock},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [doc_line]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{wsdlblock},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{doc_line(s?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [command_block]},
                  Parse::RecDescent::_tracefirst($text),
                  q{wsdlblock},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{command_block})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Pod::WSDL2::Parser::command_block, 0, 100000000, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [command_block]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{wsdlblock},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [command_block]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{wsdlblock},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{command_block(s?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying subrule: [eofile]},
                  Parse::RecDescent::_tracefirst($text),
                  q{wsdlblock},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{eofile})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::eofile($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [eofile]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{wsdlblock},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [eofile]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{wsdlblock},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{eofile}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{wsdlblock},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
	$return = {
		'docs' => Pod::WSDL2::Doc->new(join('',@{$item[1]}))
	};

	foreach (@{$item[2]}) {
		if    (ref($_) eq 'Pod::WSDL2::Fault')  { push(@{$return->{'faults'}}, $_) }
		elsif (ref($_) eq 'Pod::WSDL2::Param')  { push(@{$return->{'inputs'}}, $_) }
		elsif (ref($_) eq 'Pod::WSDL2::Return') { $return->{'return'} = $_ }
		elsif ($_ eq "oneway")                  { $return->{'oneway'} = 1; }
	}
	1;
};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [doc_line command_block eofile]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{wsdlblock},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<error...>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{wsdlblock},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        
        my $_savetext;
        @item = (q{wsdlblock});
        %item = (__RULE__ => q{wsdlblock});
        my $repcount = 0;


        

        Parse::RecDescent::_trace(q{Trying directive: [<error...>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{wsdlblock},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { if (1) { do {
        my $rule = $item[0];
           $rule =~ s/_/ /g;
        #WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
        push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
        } unless  $_noactions; undef } else {0} };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [<error...>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{wsdlblock},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{wsdlblock},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{wsdlblock},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{wsdlblock},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{wsdlblock},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::return_block
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"return_block"};
    
    Parse::RecDescent::_trace(q{Trying rule: [return_block]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{return_block},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'_RETURN'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['_RETURN' <commit> hash, or array, or simple]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{return_block});
        %item = (__RULE__ => q{return_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['_RETURN']},
                      Parse::RecDescent::_tracefirst($text),
                      q{return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A_RETURN/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        

        Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{return_block},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { $commit = 1 };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_return_block]},
                  Parse::RecDescent::_tracefirst($text),
                  q{return_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{hash, or array, or simple})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_return_block($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_return_block]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{return_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_return_block]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_return_block}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = Pod::WSDL2::Return->new($item[3]); };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['_RETURN' <commit> hash, or array, or simple]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{return_block},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{return_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{return_block},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{return_block},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_fault_block
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_fault_block"};
    
    Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_fault_block]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_fault_block},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{hash, or array, or fault_type});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [hash]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_fault_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_fault_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [hash]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_fault_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::hash($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [hash]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_fault_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [hash]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{hash}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [hash]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [array]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_fault_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_fault_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [array]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_fault_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::array($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [array]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_fault_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [array]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{array}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [array]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [fault_type]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_fault_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_fault_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [fault_type]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_fault_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::fault_type($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [fault_type]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_fault_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [fault_type]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{fault_type}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [fault_type]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_fault_block},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_fault_block},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::commands
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"commands"};
    
    Parse::RecDescent::_trace(q{Trying rule: [commands]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{commands},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{input_type, or one_way, or '_RETURN', or '_FAULT'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [input_type]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{commands});
        %item = (__RULE__ => q{commands});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [input_type]},
                  Parse::RecDescent::_tracefirst($text),
                  q{commands},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::input_type($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [input_type]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{commands},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [input_type]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{input_type}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [input_type]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [one_way]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{commands});
        %item = (__RULE__ => q{commands});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [one_way]},
                  Parse::RecDescent::_tracefirst($text),
                  q{commands},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::one_way($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [one_way]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{commands},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [one_way]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{one_way}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [one_way]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['_RETURN']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{commands});
        %item = (__RULE__ => q{commands});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['_RETURN']},
                      Parse::RecDescent::_tracefirst($text),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A_RETURN/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['_RETURN']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['_FAULT']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{commands});
        %item = (__RULE__ => q{commands});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['_FAULT']},
                      Parse::RecDescent::_tracefirst($text),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A_FAULT/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['_FAULT']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{commands},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{commands},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{commands},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{commands},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::optional
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"optional"};
    
    Parse::RecDescent::_trace(q{Trying rule: [optional]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{optional},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'OPTIONAL'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['OPTIONAL']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{optional},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{optional});
        %item = (__RULE__ => q{optional});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['OPTIONAL']},
                      Parse::RecDescent::_tracefirst($text),
                      q{optional},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\AOPTIONAL/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{optional},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = 1; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['OPTIONAL']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{optional},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{optional},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{optional},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{optional},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{optional},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::sigul
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"sigul"};
    
    Parse::RecDescent::_trace(q{Trying rule: [sigul]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{sigul},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'$', or '@'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['$']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{sigul},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{sigul});
        %item = (__RULE__ => q{sigul});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['$']},
                      Parse::RecDescent::_tracefirst($text),
                      q{sigul},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\$/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{sigul},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = 0; 1;};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['$']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{sigul},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['@']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{sigul},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{sigul});
        %item = (__RULE__ => q{sigul});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['@']},
                      Parse::RecDescent::_tracefirst($text),
                      q{sigul},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\@/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{sigul},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = 1;   };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['@']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{sigul},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{sigul},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{sigul},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{sigul},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{sigul},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::doc_line
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"doc_line"};
    
    Parse::RecDescent::_trace(q{Trying rule: [doc_line]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{doc_line},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{commands});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [commands comment]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{doc_line},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{doc_line});
        %item = (__RULE__ => q{doc_line});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [commands]},
                  Parse::RecDescent::_tracefirst($text),
                  q{doc_line},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        $_savetext = $text;if (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::commands($thisparser,$text,$repeating,1,sub { \@arg })))
        {
            $text = $_savetext;
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [commands]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{doc_line},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [commands]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{doc_line},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{commands}} = $_tok;
        push @item, $_tok;
        $text = $_savetext;
        }

        Parse::RecDescent::_trace(q{Trying subrule: [comment]},
                  Parse::RecDescent::_tracefirst($text),
                  q{doc_line},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{comment})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::comment($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [comment]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{doc_line},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [comment]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{doc_line},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{comment}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{doc_line},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[2]; 1; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [commands comment]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{doc_line},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{doc_line},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{doc_line},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{doc_line},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{doc_line},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::input_block
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"input_block"};
    
    Parse::RecDescent::_trace(q{Trying rule: [input_block]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{input_block},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{input_type});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [input_type <commit> field_name hash, or array, or simple]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{input_block});
        %item = (__RULE__ => q{input_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [input_type]},
                  Parse::RecDescent::_tracefirst($text),
                  q{input_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::input_type($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [input_type]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{input_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [input_type]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{input_type}} = $_tok;
        push @item, $_tok;
        
        }

        

        Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{input_block},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { $commit = 1 };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [field_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{input_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{field_name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::field_name($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [field_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{input_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [field_name]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{field_name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_input_block]},
                  Parse::RecDescent::_tracefirst($text),
                  q{input_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{hash, or array, or simple})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_input_block($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_input_block]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{input_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_input_block]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_input_block}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
	$item[4]->{input_type} = $item[1];
	$item[4]->{name}       = $item[3];
	$return = Pod::WSDL2::Param->new($item[4]);
};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [input_type <commit> field_name hash, or array, or simple]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<error...>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        
        my $_savetext;
        @item = (q{input_block});
        %item = (__RULE__ => q{input_block});
        my $repcount = 0;


        

        Parse::RecDescent::_trace(q{Trying directive: [<error...>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{input_block},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { if (1) { do {
        my $rule = $item[0];
           $rule =~ s/_/ /g;
        #WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
        push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
        } unless  $_noactions; undef } else {0} };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [<error...>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{input_block},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{input_block},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{input_block},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::array
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"array"};
    
    Parse::RecDescent::_trace(q{Trying rule: [array]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{array},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'['});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['[' hash, or array, or simple ']']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{array});
        %item = (__RULE__ => q{array});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['[']},
                      Parse::RecDescent::_tracefirst($text),
                      q{array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\[/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_array]},
                  Parse::RecDescent::_tracefirst($text),
                  q{array},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{hash, or array, or simple})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_array($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_array]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{array},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_array]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_array}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [']']},
                      Parse::RecDescent::_tracefirst($text),
                      q{array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{']'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\]/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
	$return = { 
		simple   => 0, 
		type     => 'array', 
		elements => $item[2]
	};

	# This is a temporary hack to make hashs return anyType so that
	# we can move forward with using the new syntax while I work on the actual
	# implmentation
	$return = {
		simple => 1,
		multiple => 0,
		type => 'anyType',
		optional => 1,
	};
};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['[' hash, or array, or simple ']']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{array},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{array},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{array},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::data_type
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"data_type"};
    
    Parse::RecDescent::_trace(q{Trying rule: [data_type]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{data_type},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/\\w+(::\\w+)*/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/\\w+(::\\w+)*/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{data_type});
        %item = (__RULE__ => q{data_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/\\w+(::\\w+)*/]}, Parse::RecDescent::_tracefirst($text),
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\w+(::\w+)*)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[1]; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/\\w+(::\\w+)*/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{data_type},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{data_type},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{data_type},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::fault_block
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"fault_block"};
    
    Parse::RecDescent::_trace(q{Trying rule: [fault_block]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{fault_block},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'_FAULT'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['_FAULT' <commit> hash, or array, or fault_type]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{fault_block});
        %item = (__RULE__ => q{fault_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['_FAULT']},
                      Parse::RecDescent::_tracefirst($text),
                      q{fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A_FAULT/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        

        Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { $commit = 1 };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_fault_block]},
                  Parse::RecDescent::_tracefirst($text),
                  q{fault_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{hash, or array, or fault_type})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_fault_block($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_fault_block]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{fault_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_fault_block]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_fault_block}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = Pod::WSDL2::Fault->new( $item[3]); };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['_FAULT' <commit> hash, or array, or fault_type]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{fault_block},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{fault_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{fault_block},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{fault_block},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::input_type
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"input_type"};
    
    Parse::RecDescent::_trace(q{Trying rule: [input_type]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{input_type},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'_INOUT', or '_IN', or '_OUT'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['_INOUT']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{input_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{input_type});
        %item = (__RULE__ => q{input_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['_INOUT']},
                      Parse::RecDescent::_tracefirst($text),
                      q{input_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A_INOUT/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['_INOUT']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{input_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['_IN']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{input_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{input_type});
        %item = (__RULE__ => q{input_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['_IN']},
                      Parse::RecDescent::_tracefirst($text),
                      q{input_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A_IN/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['_IN']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{input_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['_OUT']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{input_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{input_type});
        %item = (__RULE__ => q{input_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['_OUT']},
                      Parse::RecDescent::_tracefirst($text),
                      q{input_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A_OUT/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['_OUT']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{input_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{input_type},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{input_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{input_type},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{input_type},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::field_name
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"field_name"};
    
    Parse::RecDescent::_trace(q{Trying rule: [field_name]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{field_name},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/[\\w-]+/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/[\\w-]+/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{field_name});
        %item = (__RULE__ => q{field_name});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/[\\w-]+/]}, Parse::RecDescent::_tracefirst($text),
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[\w-]+)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[1]; 1; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/[\\w-]+/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<error...>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        
        my $_savetext;
        @item = (q{field_name});
        %item = (__RULE__ => q{field_name});
        my $repcount = 0;


        

        Parse::RecDescent::_trace(q{Trying directive: [<error...>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { if (1) { do {
        my $rule = $item[0];
           $rule =~ s/_/ /g;
        #WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
        push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
        } unless  $_noactions; undef } else {0} };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [<error...>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{field_name},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{field_name},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{field_name},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::eofile
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"eofile"};
    
    Parse::RecDescent::_trace(q{Trying rule: [eofile]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{eofile},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^\\Z/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^\\Z/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{eofile},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{eofile});
        %item = (__RULE__ => q{eofile});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^\\Z/]}, Parse::RecDescent::_tracefirst($text),
                      q{eofile},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^\Z)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/^\\Z/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{eofile},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{eofile},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{eofile},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{eofile},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{eofile},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::hash_element
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"hash_element"};
    
    Parse::RecDescent::_trace(q{Trying rule: [hash_element]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{hash_element},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{field_name});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [field_name '=>' hash, or array, or simple]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{hash_element});
        %item = (__RULE__ => q{hash_element});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [field_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{hash_element},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::field_name($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [field_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{hash_element},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [field_name]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{field_name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: ['=>']},
                      Parse::RecDescent::_tracefirst($text),
                      q{hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{'=>'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\=\>/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_hash_element]},
                  Parse::RecDescent::_tracefirst($text),
                  q{hash_element},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{hash, or array, or simple})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_hash_element($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_hash_element]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{hash_element},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_hash_element]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_hash_element}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
	$return = {
		'name' => $item{field_name},
		%{$item[3]}
	};
};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [field_name '=>' hash, or array, or simple]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{hash_element},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{hash_element},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{hash_element},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{hash_element},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_array
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_array"};
    
    Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_array]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_array},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{hash, or array, or simple});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [hash]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_array});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_array});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [hash]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_array},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::hash($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [hash]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_array},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [hash]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{hash}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [hash]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [array]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_array});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_array});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [array]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_array},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::array($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [array]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_array},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [array]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{array}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [array]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [simple]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_array});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_array});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying repeated subrule: [simple]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_array},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Pod::WSDL2::Parser::simple, 1, 100000000, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [simple]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_array},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [simple]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{simple(s)}} = $_tok;
        push @item, $_tok;
        



        Parse::RecDescent::_trace(q{>>Matched production: [simple]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_array},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_array},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::command_block
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"command_block"};
    
    Parse::RecDescent::_trace(q{Trying rule: [command_block]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{command_block},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{one_way, or input_block, or return_block, or fault_block});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [one_way, or input_block, or return_block, or fault_block]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{command_block});
        %item = (__RULE__ => q{command_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_command_block]},
                  Parse::RecDescent::_tracefirst($text),
                  q{command_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_command_block($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_command_block]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{command_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_command_block]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_command_block}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[1]; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [one_way, or input_block, or return_block, or fault_block]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{command_block},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{command_block},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{command_block},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_input_block
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_input_block"};
    
    Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_input_block]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_input_block},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{hash, or array, or simple});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [hash]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_input_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_input_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [hash]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_input_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::hash($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [hash]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_input_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [hash]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{hash}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [hash]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [array]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_input_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_input_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [array]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_input_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::array($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [array]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_input_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [array]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{array}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [array]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [simple]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_input_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_input_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [simple]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_input_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::simple($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [simple]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_input_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [simple]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{simple}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [simple]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_input_block},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_input_block},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::_alternation_1_of_production_1_of_rule_command_block
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_command_block"};
    
    Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_command_block]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_command_block},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{one_way, or input_block, or return_block, or fault_block});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [one_way]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_command_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_command_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [one_way]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_command_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::one_way($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [one_way]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_command_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [one_way]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{one_way}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [one_way]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [input_block]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_command_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_command_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [input_block]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_command_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::input_block($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [input_block]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_command_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [input_block]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{input_block}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [input_block]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [return_block]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_command_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_command_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [return_block]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_command_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::return_block($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [return_block]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_command_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [return_block]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{return_block}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [return_block]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [fault_block]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_command_block});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_command_block});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [fault_block]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_command_block},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::fault_block($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [fault_block]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_command_block},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [fault_block]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{fault_block}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [fault_block]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_command_block},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_command_block},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::fault_type
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"fault_type"};
    
    Parse::RecDescent::_trace(q{Trying rule: [fault_type]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{fault_type},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{data_type});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [data_type comment]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{fault_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{fault_type});
        %item = (__RULE__ => q{fault_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [data_type]},
                  Parse::RecDescent::_tracefirst($text),
                  q{fault_type},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::data_type($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [data_type]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{fault_type},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [data_type]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{fault_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{data_type}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [comment]},
                  Parse::RecDescent::_tracefirst($text),
                  q{fault_type},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{comment})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Pod::WSDL2::Parser::comment, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [comment]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{fault_type},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [comment]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{fault_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{comment(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{fault_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
	$return = {
		type => $item[1],
		docs => Pod::WSDL2::Doc->new($item[2]->[0])
	};
};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [data_type comment]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{fault_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{fault_type},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{fault_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{fault_type},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{fault_type},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::hash
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"hash"};
    
    Parse::RecDescent::_trace(q{Trying rule: [hash]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{hash},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'\{'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['\{' hash_element '\}']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{hash});
        %item = (__RULE__ => q{hash});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['\{']},
                      Parse::RecDescent::_tracefirst($text),
                      q{hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\{/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying repeated subrule: [hash_element]},
                  Parse::RecDescent::_tracefirst($text),
                  q{hash},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{hash_element})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Pod::WSDL2::Parser::hash_element, 1, 100000000, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [hash_element]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{hash},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [hash_element]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{hash_element(s)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: ['\}']},
                      Parse::RecDescent::_tracefirst($text),
                      q{hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{'\}'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\}/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {  
	$return = { 
		simple   => 0, 
		type     => 'hash',
		elements => $item{'hash_element(s)'}
	};

	# This is a temporary hack to make hashs return anyType so that
	# we can move forward with using the new syntax while I work on the actual
	# implmentation
	$return = {
		simple => 1,
		multiple => 0,
		type => 'anyType',
		optional => 1,
	};
};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['\{' hash_element '\}']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{hash},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{hash},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{hash},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::one_way
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"one_way"};
    
    Parse::RecDescent::_trace(q{Trying rule: [one_way]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{one_way},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'_ONEWAY'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['_ONEWAY']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{one_way},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{one_way});
        %item = (__RULE__ => q{one_way});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['_ONEWAY']},
                      Parse::RecDescent::_tracefirst($text),
                      q{one_way},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A_ONEWAY/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{one_way},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = 'oneway'; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['_ONEWAY']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{one_way},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{one_way},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{one_way},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{one_way},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{one_way},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::comment
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"comment"};
    
    Parse::RecDescent::_trace(q{Trying rule: [comment]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{comment},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        local $skip = defined($skip) ? $skip : $Parse::RecDescent::skip;
        Parse::RecDescent::_trace(q{Trying production: [<skip:'[ \t]*'> /.*\\n+/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{comment});
        %item = (__RULE__ => q{comment});
        my $repcount = 0;


        

        Parse::RecDescent::_trace(q{Trying directive: [<skip:'[ \t]*'>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { my $oldskip = $skip; $skip='[ \t]*'; $oldskip };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/.*\\n+/]}, Parse::RecDescent::_tracefirst($text),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/.*\\n+/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:.*\n+)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[2]; 1; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [<skip:'[ \t]*'> /.*\\n+/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{comment},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{comment},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{comment},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Pod::WSDL2::Parser::simple
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"simple"};
    
    Parse::RecDescent::_trace(q{Trying rule: [simple]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{simple},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{sigul});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [sigul <commit> data_type optional comment]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{simple},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{simple});
        %item = (__RULE__ => q{simple});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [sigul]},
                  Parse::RecDescent::_tracefirst($text),
                  q{simple},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::sigul($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [sigul]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{simple},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [sigul]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{simple},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{sigul}} = $_tok;
        push @item, $_tok;
        
        }

        

        Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{simple},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { $commit = 1 };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [data_type]},
                  Parse::RecDescent::_tracefirst($text),
                  q{simple},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{data_type})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Pod::WSDL2::Parser::data_type($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [data_type]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{simple},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [data_type]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{simple},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{data_type}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [optional]},
                  Parse::RecDescent::_tracefirst($text),
                  q{simple},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{optional})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Pod::WSDL2::Parser::optional, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [optional]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{simple},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [optional]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{simple},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{optional(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [comment]},
                  Parse::RecDescent::_tracefirst($text),
                  q{simple},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{comment})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Pod::WSDL2::Parser::comment, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [comment]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{simple},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [comment]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{simple},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{comment(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{simple},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { 
	$return = {
		simple   => 1,
		multiple => $item{'sigul'},
		type     => $item{'data_type'},
		optional => ($item{'optional(?)'}->[0])?1:0,
		docs     => Pod::WSDL2::Doc->new($item{'comment(?)'}->[0])
	};
};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [sigul <commit> data_type optional comment]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{simple},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{simple},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{simple},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{simple},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{simple},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}
}
package Pod::WSDL2::Parser; sub new { my $self = bless( {
                 '_precompiled' => 1,
                 'localvars' => '',
                 'startcode' => '',
                 'namespace' => 'Parse::RecDescent::Pod::WSDL2::Parser',
                 'rules' => {
                              '_alternation_1_of_production_1_of_rule_hash_element' => bless( {
                                                                                                'impcount' => 0,
                                                                                                'calls' => [
                                                                                                             'hash',
                                                                                                             'array',
                                                                                                             'simple'
                                                                                                           ],
                                                                                                'changed' => 0,
                                                                                                'opcount' => 0,
                                                                                                'prods' => [
                                                                                                             bless( {
                                                                                                                      'number' => '0',
                                                                                                                      'strcount' => 0,
                                                                                                                      'dircount' => 0,
                                                                                                                      'uncommit' => undef,
                                                                                                                      'error' => undef,
                                                                                                                      'patcount' => 0,
                                                                                                                      'actcount' => 0,
                                                                                                                      'items' => [
                                                                                                                                   bless( {
                                                                                                                                            'subrule' => 'hash',
                                                                                                                                            'matchrule' => 0,
                                                                                                                                            'implicit' => undef,
                                                                                                                                            'argcode' => undef,
                                                                                                                                            'lookahead' => 0,
                                                                                                                                            'line' => 115
                                                                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                                                                 ],
                                                                                                                      'line' => undef
                                                                                                                    }, 'Parse::RecDescent::Production' ),
                                                                                                             bless( {
                                                                                                                      'number' => '1',
                                                                                                                      'strcount' => 0,
                                                                                                                      'dircount' => 0,
                                                                                                                      'uncommit' => undef,
                                                                                                                      'error' => undef,
                                                                                                                      'patcount' => 0,
                                                                                                                      'actcount' => 0,
                                                                                                                      'items' => [
                                                                                                                                   bless( {
                                                                                                                                            'subrule' => 'array',
                                                                                                                                            'matchrule' => 0,
                                                                                                                                            'implicit' => undef,
                                                                                                                                            'argcode' => undef,
                                                                                                                                            'lookahead' => 0,
                                                                                                                                            'line' => 115
                                                                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                                                                 ],
                                                                                                                      'line' => 115
                                                                                                                    }, 'Parse::RecDescent::Production' ),
                                                                                                             bless( {
                                                                                                                      'number' => '2',
                                                                                                                      'strcount' => 0,
                                                                                                                      'dircount' => 0,
                                                                                                                      'uncommit' => undef,
                                                                                                                      'error' => undef,
                                                                                                                      'patcount' => 0,
                                                                                                                      'actcount' => 0,
                                                                                                                      'items' => [
                                                                                                                                   bless( {
                                                                                                                                            'subrule' => 'simple',
                                                                                                                                            'matchrule' => 0,
                                                                                                                                            'implicit' => undef,
                                                                                                                                            'argcode' => undef,
                                                                                                                                            'lookahead' => 0,
                                                                                                                                            'line' => 115
                                                                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                                                                 ],
                                                                                                                      'line' => 115
                                                                                                                    }, 'Parse::RecDescent::Production' )
                                                                                                           ],
                                                                                                'name' => '_alternation_1_of_production_1_of_rule_hash_element',
                                                                                                'vars' => '',
                                                                                                'line' => 115
                                                                                              }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_return_block' => bless( {
                                                                                                'impcount' => 0,
                                                                                                'calls' => [
                                                                                                             'hash',
                                                                                                             'array',
                                                                                                             'simple'
                                                                                                           ],
                                                                                                'changed' => 0,
                                                                                                'opcount' => 0,
                                                                                                'prods' => [
                                                                                                             bless( {
                                                                                                                      'number' => '0',
                                                                                                                      'strcount' => 0,
                                                                                                                      'dircount' => 0,
                                                                                                                      'uncommit' => undef,
                                                                                                                      'error' => undef,
                                                                                                                      'patcount' => 0,
                                                                                                                      'actcount' => 0,
                                                                                                                      'items' => [
                                                                                                                                   bless( {
                                                                                                                                            'subrule' => 'hash',
                                                                                                                                            'matchrule' => 0,
                                                                                                                                            'implicit' => undef,
                                                                                                                                            'argcode' => undef,
                                                                                                                                            'lookahead' => 0,
                                                                                                                                            'line' => 115
                                                                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                                                                 ],
                                                                                                                      'line' => undef
                                                                                                                    }, 'Parse::RecDescent::Production' ),
                                                                                                             bless( {
                                                                                                                      'number' => '1',
                                                                                                                      'strcount' => 0,
                                                                                                                      'dircount' => 0,
                                                                                                                      'uncommit' => undef,
                                                                                                                      'error' => undef,
                                                                                                                      'patcount' => 0,
                                                                                                                      'actcount' => 0,
                                                                                                                      'items' => [
                                                                                                                                   bless( {
                                                                                                                                            'subrule' => 'array',
                                                                                                                                            'matchrule' => 0,
                                                                                                                                            'implicit' => undef,
                                                                                                                                            'argcode' => undef,
                                                                                                                                            'lookahead' => 0,
                                                                                                                                            'line' => 115
                                                                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                                                                 ],
                                                                                                                      'line' => 115
                                                                                                                    }, 'Parse::RecDescent::Production' ),
                                                                                                             bless( {
                                                                                                                      'number' => '2',
                                                                                                                      'strcount' => 0,
                                                                                                                      'dircount' => 0,
                                                                                                                      'uncommit' => undef,
                                                                                                                      'error' => undef,
                                                                                                                      'patcount' => 0,
                                                                                                                      'actcount' => 0,
                                                                                                                      'items' => [
                                                                                                                                   bless( {
                                                                                                                                            'subrule' => 'simple',
                                                                                                                                            'matchrule' => 0,
                                                                                                                                            'implicit' => undef,
                                                                                                                                            'argcode' => undef,
                                                                                                                                            'lookahead' => 0,
                                                                                                                                            'line' => 115
                                                                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                                                                 ],
                                                                                                                      'line' => 115
                                                                                                                    }, 'Parse::RecDescent::Production' )
                                                                                                           ],
                                                                                                'name' => '_alternation_1_of_production_1_of_rule_return_block',
                                                                                                'vars' => '',
                                                                                                'line' => 115
                                                                                              }, 'Parse::RecDescent::Rule' ),
                              'wsdlblock' => bless( {
                                                      'impcount' => 0,
                                                      'calls' => [
                                                                   'doc_line',
                                                                   'command_block',
                                                                   'eofile'
                                                                 ],
                                                      'changed' => 0,
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => '0',
                                                                            'strcount' => 0,
                                                                            'dircount' => 0,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'actcount' => 1,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'subrule' => 'doc_line',
                                                                                                  'expected' => undef,
                                                                                                  'min' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'max' => 100000000,
                                                                                                  'matchrule' => 0,
                                                                                                  'repspec' => 's?',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 8
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'command_block',
                                                                                                  'expected' => undef,
                                                                                                  'min' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'max' => 100000000,
                                                                                                  'matchrule' => 0,
                                                                                                  'repspec' => 's?',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 8
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'eofile',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 8
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 8,
                                                                                                  'code' => '{
	$return = {
		\'docs\' => Pod::WSDL2::Doc->new(join(\'\',@{$item[1]}))
	};

	foreach (@{$item[2]}) {
		if    (ref($_) eq \'Pod::WSDL2::Fault\')  { push(@{$return->{\'faults\'}}, $_) }
		elsif (ref($_) eq \'Pod::WSDL2::Param\')  { push(@{$return->{\'inputs\'}}, $_) }
		elsif (ref($_) eq \'Pod::WSDL2::Return\') { $return->{\'return\'} = $_ }
		elsif ($_ eq "oneway")                  { $return->{\'oneway\'} = 1; }
	}
	1;
}'
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => '1',
                                                                            'strcount' => 0,
                                                                            'dircount' => 1,
                                                                            'uncommit' => 0,
                                                                            'error' => 1,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'msg' => '',
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'commitonly' => '',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 21
                                                                                                }, 'Parse::RecDescent::Error' )
                                                                                       ],
                                                                            'line' => 21
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'name' => 'wsdlblock',
                                                      'vars' => '',
                                                      'line' => 8
                                                    }, 'Parse::RecDescent::Rule' ),
                              'return_block' => bless( {
                                                         'impcount' => 1,
                                                         'calls' => [
                                                                      '_alternation_1_of_production_1_of_rule_return_block'
                                                                    ],
                                                         'changed' => 0,
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'number' => '0',
                                                                               'strcount' => 1,
                                                                               'dircount' => 1,
                                                                               'uncommit' => undef,
                                                                               'error' => undef,
                                                                               'patcount' => 0,
                                                                               'actcount' => 1,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'pattern' => '_RETURN',
                                                                                                     'hashname' => '__STRING1__',
                                                                                                     'description' => '\'_RETURN\'',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 34
                                                                                                   }, 'Parse::RecDescent::Literal' ),
                                                                                            bless( {
                                                                                                     'hashname' => '__DIRECTIVE1__',
                                                                                                     'name' => '<commit>',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 34,
                                                                                                     'code' => '$commit = 1'
                                                                                                   }, 'Parse::RecDescent::Directive' ),
                                                                                            bless( {
                                                                                                     'subrule' => '_alternation_1_of_production_1_of_rule_return_block',
                                                                                                     'matchrule' => 0,
                                                                                                     'implicit' => 'hash, or array, or simple',
                                                                                                     'argcode' => undef,
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 34
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 34,
                                                                                                     'code' => '{ $return = Pod::WSDL2::Return->new($item[3]); }'
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'line' => undef
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'name' => 'return_block',
                                                         'vars' => '',
                                                         'line' => 34
                                                       }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_fault_block' => bless( {
                                                                                               'impcount' => 0,
                                                                                               'calls' => [
                                                                                                            'hash',
                                                                                                            'array',
                                                                                                            'fault_type'
                                                                                                          ],
                                                                                               'changed' => 0,
                                                                                               'opcount' => 0,
                                                                                               'prods' => [
                                                                                                            bless( {
                                                                                                                     'number' => '0',
                                                                                                                     'strcount' => 0,
                                                                                                                     'dircount' => 0,
                                                                                                                     'uncommit' => undef,
                                                                                                                     'error' => undef,
                                                                                                                     'patcount' => 0,
                                                                                                                     'actcount' => 0,
                                                                                                                     'items' => [
                                                                                                                                  bless( {
                                                                                                                                           'subrule' => 'hash',
                                                                                                                                           'matchrule' => 0,
                                                                                                                                           'implicit' => undef,
                                                                                                                                           'argcode' => undef,
                                                                                                                                           'lookahead' => 0,
                                                                                                                                           'line' => 115
                                                                                                                                         }, 'Parse::RecDescent::Subrule' )
                                                                                                                                ],
                                                                                                                     'line' => undef
                                                                                                                   }, 'Parse::RecDescent::Production' ),
                                                                                                            bless( {
                                                                                                                     'number' => '1',
                                                                                                                     'strcount' => 0,
                                                                                                                     'dircount' => 0,
                                                                                                                     'uncommit' => undef,
                                                                                                                     'error' => undef,
                                                                                                                     'patcount' => 0,
                                                                                                                     'actcount' => 0,
                                                                                                                     'items' => [
                                                                                                                                  bless( {
                                                                                                                                           'subrule' => 'array',
                                                                                                                                           'matchrule' => 0,
                                                                                                                                           'implicit' => undef,
                                                                                                                                           'argcode' => undef,
                                                                                                                                           'lookahead' => 0,
                                                                                                                                           'line' => 115
                                                                                                                                         }, 'Parse::RecDescent::Subrule' )
                                                                                                                                ],
                                                                                                                     'line' => 115
                                                                                                                   }, 'Parse::RecDescent::Production' ),
                                                                                                            bless( {
                                                                                                                     'number' => '2',
                                                                                                                     'strcount' => 0,
                                                                                                                     'dircount' => 0,
                                                                                                                     'uncommit' => undef,
                                                                                                                     'error' => undef,
                                                                                                                     'patcount' => 0,
                                                                                                                     'actcount' => 0,
                                                                                                                     'items' => [
                                                                                                                                  bless( {
                                                                                                                                           'subrule' => 'fault_type',
                                                                                                                                           'matchrule' => 0,
                                                                                                                                           'implicit' => undef,
                                                                                                                                           'argcode' => undef,
                                                                                                                                           'lookahead' => 0,
                                                                                                                                           'line' => 115
                                                                                                                                         }, 'Parse::RecDescent::Subrule' )
                                                                                                                                ],
                                                                                                                     'line' => 115
                                                                                                                   }, 'Parse::RecDescent::Production' )
                                                                                                          ],
                                                                                               'name' => '_alternation_1_of_production_1_of_rule_fault_block',
                                                                                               'vars' => '',
                                                                                               'line' => 115
                                                                                             }, 'Parse::RecDescent::Rule' ),
                              'commands' => bless( {
                                                     'impcount' => 0,
                                                     'calls' => [
                                                                  'input_type',
                                                                  'one_way'
                                                                ],
                                                     'changed' => 0,
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'number' => '0',
                                                                           'strcount' => 0,
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'error' => undef,
                                                                           'patcount' => 0,
                                                                           'actcount' => 0,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'subrule' => 'input_type',
                                                                                                 'matchrule' => 0,
                                                                                                 'implicit' => undef,
                                                                                                 'argcode' => undef,
                                                                                                 'lookahead' => 0,
                                                                                                 'line' => 110
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => undef
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'number' => '1',
                                                                           'strcount' => 0,
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'error' => undef,
                                                                           'patcount' => 0,
                                                                           'actcount' => 0,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'subrule' => 'one_way',
                                                                                                 'matchrule' => 0,
                                                                                                 'implicit' => undef,
                                                                                                 'argcode' => undef,
                                                                                                 'lookahead' => 0,
                                                                                                 'line' => 110
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => 110
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'number' => '2',
                                                                           'strcount' => 1,
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'error' => undef,
                                                                           'patcount' => 0,
                                                                           'actcount' => 0,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'pattern' => '_RETURN',
                                                                                                 'hashname' => '__STRING1__',
                                                                                                 'description' => '\'_RETURN\'',
                                                                                                 'lookahead' => 0,
                                                                                                 'line' => 110
                                                                                               }, 'Parse::RecDescent::Literal' )
                                                                                      ],
                                                                           'line' => 110
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'number' => '3',
                                                                           'strcount' => 1,
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'error' => undef,
                                                                           'patcount' => 0,
                                                                           'actcount' => 0,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'pattern' => '_FAULT',
                                                                                                 'hashname' => '__STRING1__',
                                                                                                 'description' => '\'_FAULT\'',
                                                                                                 'lookahead' => 0,
                                                                                                 'line' => 110
                                                                                               }, 'Parse::RecDescent::Literal' )
                                                                                      ],
                                                                           'line' => 110
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'name' => 'commands',
                                                     'vars' => '',
                                                     'line' => 110
                                                   }, 'Parse::RecDescent::Rule' ),
                              'optional' => bless( {
                                                     'impcount' => 0,
                                                     'calls' => [],
                                                     'changed' => 0,
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'number' => '0',
                                                                           'strcount' => 1,
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'error' => undef,
                                                                           'patcount' => 0,
                                                                           'actcount' => 1,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'pattern' => 'OPTIONAL',
                                                                                                 'hashname' => '__STRING1__',
                                                                                                 'description' => '\'OPTIONAL\'',
                                                                                                 'lookahead' => 0,
                                                                                                 'line' => 108
                                                                                               }, 'Parse::RecDescent::Literal' ),
                                                                                        bless( {
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0,
                                                                                                 'line' => 108,
                                                                                                 'code' => '{ $return = 1; }'
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'line' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'name' => 'optional',
                                                     'vars' => '',
                                                     'line' => 108
                                                   }, 'Parse::RecDescent::Rule' ),
                              'sigul' => bless( {
                                                  'impcount' => 0,
                                                  'calls' => [],
                                                  'changed' => 0,
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'number' => '0',
                                                                        'strcount' => 1,
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 1,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'pattern' => '$',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'description' => '\'$\'',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 55
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 55,
                                                                                              'code' => '{ $return = 0; 1;}'
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'line' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'number' => '1',
                                                                        'strcount' => 1,
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 1,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'pattern' => '@',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'description' => '\'@\'',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 56
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 56,
                                                                                              'code' => '{ $return = 1;   }'
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'line' => 56
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'name' => 'sigul',
                                                  'vars' => '',
                                                  'line' => 55
                                                }, 'Parse::RecDescent::Rule' ),
                              'doc_line' => bless( {
                                                     'impcount' => 0,
                                                     'calls' => [
                                                                  'commands',
                                                                  'comment'
                                                                ],
                                                     'changed' => 0,
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'number' => '0',
                                                                           'strcount' => 0,
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'error' => undef,
                                                                           'patcount' => 0,
                                                                           'actcount' => 1,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'subrule' => 'commands',
                                                                                                 'matchrule' => 0,
                                                                                                 'implicit' => undef,
                                                                                                 'argcode' => undef,
                                                                                                 'lookahead' => -1,
                                                                                                 'line' => 39
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'subrule' => 'comment',
                                                                                                 'matchrule' => 0,
                                                                                                 'implicit' => undef,
                                                                                                 'argcode' => undef,
                                                                                                 'lookahead' => 0,
                                                                                                 'line' => 39
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0,
                                                                                                 'line' => 39,
                                                                                                 'code' => '{ $return = $item[2]; 1; }'
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'line' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'name' => 'doc_line',
                                                     'vars' => '',
                                                     'line' => 39
                                                   }, 'Parse::RecDescent::Rule' ),
                              'input_block' => bless( {
                                                        'impcount' => 0,
                                                        'calls' => [
                                                                     'input_type',
                                                                     'field_name',
                                                                     '_alternation_1_of_production_1_of_rule_input_block'
                                                                   ],
                                                        'changed' => 0,
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'number' => '0',
                                                                              'strcount' => 0,
                                                                              'dircount' => 1,
                                                                              'uncommit' => undef,
                                                                              'error' => undef,
                                                                              'patcount' => 0,
                                                                              'actcount' => 1,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'subrule' => 'input_type',
                                                                                                    'matchrule' => 0,
                                                                                                    'implicit' => undef,
                                                                                                    'argcode' => undef,
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 25
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'name' => '<commit>',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 25,
                                                                                                    'code' => '$commit = 1'
                                                                                                  }, 'Parse::RecDescent::Directive' ),
                                                                                           bless( {
                                                                                                    'subrule' => 'field_name',
                                                                                                    'matchrule' => 0,
                                                                                                    'implicit' => undef,
                                                                                                    'argcode' => undef,
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 25
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'subrule' => '_alternation_1_of_production_1_of_rule_input_block',
                                                                                                    'matchrule' => 0,
                                                                                                    'implicit' => 'hash, or array, or simple',
                                                                                                    'argcode' => undef,
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 25
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 25,
                                                                                                    'code' => '{
	$item[4]->{input_type} = $item[1];
	$item[4]->{name}       = $item[3];
	$return = Pod::WSDL2::Param->new($item[4]);
}'
                                                                                                  }, 'Parse::RecDescent::Action' )
                                                                                         ],
                                                                              'line' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'number' => '1',
                                                                              'strcount' => 0,
                                                                              'dircount' => 1,
                                                                              'uncommit' => 0,
                                                                              'error' => 1,
                                                                              'patcount' => 0,
                                                                              'actcount' => 0,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'msg' => '',
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'commitonly' => '',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 30
                                                                                                  }, 'Parse::RecDescent::Error' )
                                                                                         ],
                                                                              'line' => 30
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'name' => 'input_block',
                                                        'vars' => '',
                                                        'line' => 25
                                                      }, 'Parse::RecDescent::Rule' ),
                              'array' => bless( {
                                                  'impcount' => 1,
                                                  'calls' => [
                                                               '_alternation_1_of_production_1_of_rule_array'
                                                             ],
                                                  'changed' => 0,
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'number' => '0',
                                                                        'strcount' => 2,
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 1,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'pattern' => '[',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'description' => '\'[\'',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 83
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'subrule' => '_alternation_1_of_production_1_of_rule_array',
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => 'hash, or array, or simple',
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'line' => 83
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'pattern' => ']',
                                                                                              'hashname' => '__STRING2__',
                                                                                              'description' => '\']\'',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 83
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 83,
                                                                                              'code' => '{
	$return = { 
		simple   => 0, 
		type     => \'array\', 
		elements => $item[2]
	};

	# This is a temporary hack to make hashs return anyType so that
	# we can move forward with using the new syntax while I work on the actual
	# implmentation
	$return = {
		simple => 1,
		multiple => 0,
		type => \'anyType\',
		optional => 1,
	};
}'
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'line' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'name' => 'array',
                                                  'vars' => '',
                                                  'line' => 83
                                                }, 'Parse::RecDescent::Rule' ),
                              'data_type' => bless( {
                                                      'impcount' => 0,
                                                      'calls' => [],
                                                      'changed' => 0,
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => '0',
                                                                            'strcount' => 0,
                                                                            'dircount' => 0,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 1,
                                                                            'actcount' => 1,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'pattern' => '\\w+(::\\w+)*',
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'description' => '/\\\\w+(::\\\\w+)*/',
                                                                                                  'lookahead' => 0,
                                                                                                  'rdelim' => '/',
                                                                                                  'line' => 114,
                                                                                                  'mod' => '',
                                                                                                  'ldelim' => '/'
                                                                                                }, 'Parse::RecDescent::Token' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 114,
                                                                                                  'code' => '{ $return = $item[1]; }'
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'name' => 'data_type',
                                                      'vars' => '',
                                                      'line' => 114
                                                    }, 'Parse::RecDescent::Rule' ),
                              'fault_block' => bless( {
                                                        'impcount' => 1,
                                                        'calls' => [
                                                                     '_alternation_1_of_production_1_of_rule_fault_block'
                                                                   ],
                                                        'changed' => 0,
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'number' => '0',
                                                                              'strcount' => 1,
                                                                              'dircount' => 1,
                                                                              'uncommit' => undef,
                                                                              'error' => undef,
                                                                              'patcount' => 0,
                                                                              'actcount' => 1,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'pattern' => '_FAULT',
                                                                                                    'hashname' => '__STRING1__',
                                                                                                    'description' => '\'_FAULT\'',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 35
                                                                                                  }, 'Parse::RecDescent::Literal' ),
                                                                                           bless( {
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'name' => '<commit>',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 35,
                                                                                                    'code' => '$commit = 1'
                                                                                                  }, 'Parse::RecDescent::Directive' ),
                                                                                           bless( {
                                                                                                    'subrule' => '_alternation_1_of_production_1_of_rule_fault_block',
                                                                                                    'matchrule' => 0,
                                                                                                    'implicit' => 'hash, or array, or fault_type',
                                                                                                    'argcode' => undef,
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 35
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 35,
                                                                                                    'code' => '{ $return = Pod::WSDL2::Fault->new( $item[3]); }'
                                                                                                  }, 'Parse::RecDescent::Action' )
                                                                                         ],
                                                                              'line' => undef
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'name' => 'fault_block',
                                                        'vars' => '',
                                                        'line' => 35
                                                      }, 'Parse::RecDescent::Rule' ),
                              'input_type' => bless( {
                                                       'impcount' => 0,
                                                       'calls' => [],
                                                       'changed' => 0,
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'number' => '0',
                                                                             'strcount' => 1,
                                                                             'dircount' => 0,
                                                                             'uncommit' => undef,
                                                                             'error' => undef,
                                                                             'patcount' => 0,
                                                                             'actcount' => 0,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'pattern' => '_INOUT',
                                                                                                   'hashname' => '__STRING1__',
                                                                                                   'description' => '\'_INOUT\'',
                                                                                                   'lookahead' => 0,
                                                                                                   'line' => 32
                                                                                                 }, 'Parse::RecDescent::Literal' )
                                                                                        ],
                                                                             'line' => undef
                                                                           }, 'Parse::RecDescent::Production' ),
                                                                    bless( {
                                                                             'number' => '1',
                                                                             'strcount' => 1,
                                                                             'dircount' => 0,
                                                                             'uncommit' => undef,
                                                                             'error' => undef,
                                                                             'patcount' => 0,
                                                                             'actcount' => 0,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'pattern' => '_IN',
                                                                                                   'hashname' => '__STRING1__',
                                                                                                   'description' => '\'_IN\'',
                                                                                                   'lookahead' => 0,
                                                                                                   'line' => 32
                                                                                                 }, 'Parse::RecDescent::Literal' )
                                                                                        ],
                                                                             'line' => 32
                                                                           }, 'Parse::RecDescent::Production' ),
                                                                    bless( {
                                                                             'number' => '2',
                                                                             'strcount' => 1,
                                                                             'dircount' => 0,
                                                                             'uncommit' => undef,
                                                                             'error' => undef,
                                                                             'patcount' => 0,
                                                                             'actcount' => 0,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'pattern' => '_OUT',
                                                                                                   'hashname' => '__STRING1__',
                                                                                                   'description' => '\'_OUT\'',
                                                                                                   'lookahead' => 0,
                                                                                                   'line' => 32
                                                                                                 }, 'Parse::RecDescent::Literal' )
                                                                                        ],
                                                                             'line' => 32
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'name' => 'input_type',
                                                       'vars' => '',
                                                       'line' => 32
                                                     }, 'Parse::RecDescent::Rule' ),
                              'field_name' => bless( {
                                                       'impcount' => 0,
                                                       'calls' => [],
                                                       'changed' => 0,
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'number' => '0',
                                                                             'strcount' => 0,
                                                                             'dircount' => 0,
                                                                             'uncommit' => undef,
                                                                             'error' => undef,
                                                                             'patcount' => 1,
                                                                             'actcount' => 1,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'pattern' => '[\\w-]+',
                                                                                                   'hashname' => '__PATTERN1__',
                                                                                                   'description' => '/[\\\\w-]+/',
                                                                                                   'lookahead' => 0,
                                                                                                   'rdelim' => '/',
                                                                                                   'line' => 42,
                                                                                                   'mod' => '',
                                                                                                   'ldelim' => '/'
                                                                                                 }, 'Parse::RecDescent::Token' ),
                                                                                          bless( {
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'lookahead' => 0,
                                                                                                   'line' => 42,
                                                                                                   'code' => '{ $return = $item[1]; 1; }'
                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                        ],
                                                                             'line' => undef
                                                                           }, 'Parse::RecDescent::Production' ),
                                                                    bless( {
                                                                             'number' => '1',
                                                                             'strcount' => 0,
                                                                             'dircount' => 1,
                                                                             'uncommit' => 0,
                                                                             'error' => 1,
                                                                             'patcount' => 0,
                                                                             'actcount' => 0,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'msg' => '',
                                                                                                   'hashname' => '__DIRECTIVE1__',
                                                                                                   'commitonly' => '',
                                                                                                   'lookahead' => 0,
                                                                                                   'line' => 43
                                                                                                 }, 'Parse::RecDescent::Error' )
                                                                                        ],
                                                                             'line' => 43
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'name' => 'field_name',
                                                       'vars' => '',
                                                       'line' => 42
                                                     }, 'Parse::RecDescent::Rule' ),
                              'eofile' => bless( {
                                                   'impcount' => 0,
                                                   'calls' => [],
                                                   'changed' => 0,
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'number' => '0',
                                                                         'strcount' => 0,
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 1,
                                                                         'actcount' => 0,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'pattern' => '^\\Z',
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'description' => '/^\\\\Z/',
                                                                                               'lookahead' => 0,
                                                                                               'rdelim' => '/',
                                                                                               'line' => 37,
                                                                                               'mod' => '',
                                                                                               'ldelim' => '/'
                                                                                             }, 'Parse::RecDescent::Token' )
                                                                                    ],
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'name' => 'eofile',
                                                   'vars' => '',
                                                   'line' => 37
                                                 }, 'Parse::RecDescent::Rule' ),
                              'hash_element' => bless( {
                                                         'impcount' => 1,
                                                         'calls' => [
                                                                      'field_name',
                                                                      '_alternation_1_of_production_1_of_rule_hash_element'
                                                                    ],
                                                         'changed' => 0,
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'number' => '0',
                                                                               'strcount' => 1,
                                                                               'dircount' => 0,
                                                                               'uncommit' => undef,
                                                                               'error' => undef,
                                                                               'patcount' => 0,
                                                                               'actcount' => 1,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'subrule' => 'field_name',
                                                                                                     'matchrule' => 0,
                                                                                                     'implicit' => undef,
                                                                                                     'argcode' => undef,
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 101
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'pattern' => '=>',
                                                                                                     'hashname' => '__STRING1__',
                                                                                                     'description' => '\'=>\'',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 101
                                                                                                   }, 'Parse::RecDescent::Literal' ),
                                                                                            bless( {
                                                                                                     'subrule' => '_alternation_1_of_production_1_of_rule_hash_element',
                                                                                                     'matchrule' => 0,
                                                                                                     'implicit' => 'hash, or array, or simple',
                                                                                                     'argcode' => undef,
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 101
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 101,
                                                                                                     'code' => '{
	$return = {
		\'name\' => $item{field_name},
		%{$item[3]}
	};
}'
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'line' => undef
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'name' => 'hash_element',
                                                         'vars' => '',
                                                         'line' => 101
                                                       }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_array' => bless( {
                                                                                         'impcount' => 0,
                                                                                         'calls' => [
                                                                                                      'hash',
                                                                                                      'array',
                                                                                                      'simple'
                                                                                                    ],
                                                                                         'changed' => 0,
                                                                                         'opcount' => 0,
                                                                                         'prods' => [
                                                                                                      bless( {
                                                                                                               'number' => '0',
                                                                                                               'strcount' => 0,
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'error' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'actcount' => 0,
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'subrule' => 'hash',
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'line' => 115
                                                                                                                                   }, 'Parse::RecDescent::Subrule' )
                                                                                                                          ],
                                                                                                               'line' => undef
                                                                                                             }, 'Parse::RecDescent::Production' ),
                                                                                                      bless( {
                                                                                                               'number' => '1',
                                                                                                               'strcount' => 0,
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'error' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'actcount' => 0,
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'subrule' => 'array',
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'line' => 115
                                                                                                                                   }, 'Parse::RecDescent::Subrule' )
                                                                                                                          ],
                                                                                                               'line' => 115
                                                                                                             }, 'Parse::RecDescent::Production' ),
                                                                                                      bless( {
                                                                                                               'number' => '2',
                                                                                                               'strcount' => 0,
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'error' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'actcount' => 0,
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'subrule' => 'simple',
                                                                                                                                     'expected' => undef,
                                                                                                                                     'min' => 1,
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'max' => 100000000,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'repspec' => 's',
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'line' => 115
                                                                                                                                   }, 'Parse::RecDescent::Repetition' )
                                                                                                                          ],
                                                                                                               'line' => 115
                                                                                                             }, 'Parse::RecDescent::Production' )
                                                                                                    ],
                                                                                         'name' => '_alternation_1_of_production_1_of_rule_array',
                                                                                         'vars' => '',
                                                                                         'line' => 115
                                                                                       }, 'Parse::RecDescent::Rule' ),
                              'command_block' => bless( {
                                                          'impcount' => 1,
                                                          'calls' => [
                                                                       '_alternation_1_of_production_1_of_rule_command_block'
                                                                     ],
                                                          'changed' => 0,
                                                          'opcount' => 0,
                                                          'prods' => [
                                                                       bless( {
                                                                                'number' => '0',
                                                                                'strcount' => 0,
                                                                                'dircount' => 0,
                                                                                'uncommit' => undef,
                                                                                'error' => undef,
                                                                                'patcount' => 0,
                                                                                'actcount' => 1,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'subrule' => '_alternation_1_of_production_1_of_rule_command_block',
                                                                                                      'matchrule' => 0,
                                                                                                      'implicit' => 'one_way, or input_block, or return_block, or fault_block',
                                                                                                      'argcode' => undef,
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 23
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 23,
                                                                                                      'code' => '{ $return = $item[1]; }'
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'line' => undef
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'name' => 'command_block',
                                                          'vars' => '',
                                                          'line' => 23
                                                        }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_input_block' => bless( {
                                                                                               'impcount' => 0,
                                                                                               'calls' => [
                                                                                                            'hash',
                                                                                                            'array',
                                                                                                            'simple'
                                                                                                          ],
                                                                                               'changed' => 0,
                                                                                               'opcount' => 0,
                                                                                               'prods' => [
                                                                                                            bless( {
                                                                                                                     'number' => '0',
                                                                                                                     'strcount' => 0,
                                                                                                                     'dircount' => 0,
                                                                                                                     'uncommit' => undef,
                                                                                                                     'error' => undef,
                                                                                                                     'patcount' => 0,
                                                                                                                     'actcount' => 0,
                                                                                                                     'items' => [
                                                                                                                                  bless( {
                                                                                                                                           'subrule' => 'hash',
                                                                                                                                           'matchrule' => 0,
                                                                                                                                           'implicit' => undef,
                                                                                                                                           'argcode' => undef,
                                                                                                                                           'lookahead' => 0,
                                                                                                                                           'line' => 115
                                                                                                                                         }, 'Parse::RecDescent::Subrule' )
                                                                                                                                ],
                                                                                                                     'line' => undef
                                                                                                                   }, 'Parse::RecDescent::Production' ),
                                                                                                            bless( {
                                                                                                                     'number' => '1',
                                                                                                                     'strcount' => 0,
                                                                                                                     'dircount' => 0,
                                                                                                                     'uncommit' => undef,
                                                                                                                     'error' => undef,
                                                                                                                     'patcount' => 0,
                                                                                                                     'actcount' => 0,
                                                                                                                     'items' => [
                                                                                                                                  bless( {
                                                                                                                                           'subrule' => 'array',
                                                                                                                                           'matchrule' => 0,
                                                                                                                                           'implicit' => undef,
                                                                                                                                           'argcode' => undef,
                                                                                                                                           'lookahead' => 0,
                                                                                                                                           'line' => 115
                                                                                                                                         }, 'Parse::RecDescent::Subrule' )
                                                                                                                                ],
                                                                                                                     'line' => 115
                                                                                                                   }, 'Parse::RecDescent::Production' ),
                                                                                                            bless( {
                                                                                                                     'number' => '2',
                                                                                                                     'strcount' => 0,
                                                                                                                     'dircount' => 0,
                                                                                                                     'uncommit' => undef,
                                                                                                                     'error' => undef,
                                                                                                                     'patcount' => 0,
                                                                                                                     'actcount' => 0,
                                                                                                                     'items' => [
                                                                                                                                  bless( {
                                                                                                                                           'subrule' => 'simple',
                                                                                                                                           'matchrule' => 0,
                                                                                                                                           'implicit' => undef,
                                                                                                                                           'argcode' => undef,
                                                                                                                                           'lookahead' => 0,
                                                                                                                                           'line' => 115
                                                                                                                                         }, 'Parse::RecDescent::Subrule' )
                                                                                                                                ],
                                                                                                                     'line' => 115
                                                                                                                   }, 'Parse::RecDescent::Production' )
                                                                                                          ],
                                                                                               'name' => '_alternation_1_of_production_1_of_rule_input_block',
                                                                                               'vars' => '',
                                                                                               'line' => 115
                                                                                             }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_command_block' => bless( {
                                                                                                 'impcount' => 0,
                                                                                                 'calls' => [
                                                                                                              'one_way',
                                                                                                              'input_block',
                                                                                                              'return_block',
                                                                                                              'fault_block'
                                                                                                            ],
                                                                                                 'changed' => 0,
                                                                                                 'opcount' => 0,
                                                                                                 'prods' => [
                                                                                                              bless( {
                                                                                                                       'number' => '0',
                                                                                                                       'strcount' => 0,
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'error' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'actcount' => 0,
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'subrule' => 'one_way',
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'lookahead' => 0,
                                                                                                                                             'line' => 115
                                                                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                                                                  ],
                                                                                                                       'line' => undef
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'number' => '1',
                                                                                                                       'strcount' => 0,
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'error' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'actcount' => 0,
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'subrule' => 'input_block',
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'lookahead' => 0,
                                                                                                                                             'line' => 115
                                                                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                                                                  ],
                                                                                                                       'line' => 115
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'number' => '2',
                                                                                                                       'strcount' => 0,
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'error' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'actcount' => 0,
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'subrule' => 'return_block',
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'lookahead' => 0,
                                                                                                                                             'line' => 115
                                                                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                                                                  ],
                                                                                                                       'line' => 115
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'number' => '3',
                                                                                                                       'strcount' => 0,
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'error' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'actcount' => 0,
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'subrule' => 'fault_block',
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'lookahead' => 0,
                                                                                                                                             'line' => 115
                                                                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                                                                  ],
                                                                                                                       'line' => 115
                                                                                                                     }, 'Parse::RecDescent::Production' )
                                                                                                            ],
                                                                                                 'name' => '_alternation_1_of_production_1_of_rule_command_block',
                                                                                                 'vars' => '',
                                                                                                 'line' => 115
                                                                                               }, 'Parse::RecDescent::Rule' ),
                              'fault_type' => bless( {
                                                       'impcount' => 0,
                                                       'calls' => [
                                                                    'data_type',
                                                                    'comment'
                                                                  ],
                                                       'changed' => 0,
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'number' => '0',
                                                                             'strcount' => 0,
                                                                             'dircount' => 0,
                                                                             'uncommit' => undef,
                                                                             'error' => undef,
                                                                             'patcount' => 0,
                                                                             'actcount' => 1,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'subrule' => 'data_type',
                                                                                                   'matchrule' => 0,
                                                                                                   'implicit' => undef,
                                                                                                   'argcode' => undef,
                                                                                                   'lookahead' => 0,
                                                                                                   'line' => 58
                                                                                                 }, 'Parse::RecDescent::Subrule' ),
                                                                                          bless( {
                                                                                                   'subrule' => 'comment',
                                                                                                   'expected' => undef,
                                                                                                   'min' => 0,
                                                                                                   'argcode' => undef,
                                                                                                   'max' => 1,
                                                                                                   'matchrule' => 0,
                                                                                                   'repspec' => '?',
                                                                                                   'lookahead' => 0,
                                                                                                   'line' => 58
                                                                                                 }, 'Parse::RecDescent::Repetition' ),
                                                                                          bless( {
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'lookahead' => 0,
                                                                                                   'line' => 58,
                                                                                                   'code' => '{
	$return = {
		type => $item[1],
		docs => Pod::WSDL2::Doc->new($item[2]->[0])
	};
}'
                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                        ],
                                                                             'line' => undef
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'name' => 'fault_type',
                                                       'vars' => '',
                                                       'line' => 58
                                                     }, 'Parse::RecDescent::Rule' ),
                              'hash' => bless( {
                                                 'impcount' => 0,
                                                 'calls' => [
                                                              'hash_element'
                                                            ],
                                                 'changed' => 0,
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'number' => '0',
                                                                       'strcount' => 2,
                                                                       'dircount' => 0,
                                                                       'uncommit' => undef,
                                                                       'error' => undef,
                                                                       'patcount' => 0,
                                                                       'actcount' => 1,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'pattern' => '{',
                                                                                             'hashname' => '__STRING1__',
                                                                                             'description' => '\'\\{\'',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 65
                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                    bless( {
                                                                                             'subrule' => 'hash_element',
                                                                                             'expected' => undef,
                                                                                             'min' => 1,
                                                                                             'argcode' => undef,
                                                                                             'max' => 100000000,
                                                                                             'matchrule' => 0,
                                                                                             'repspec' => 's',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 65
                                                                                           }, 'Parse::RecDescent::Repetition' ),
                                                                                    bless( {
                                                                                             'pattern' => '}',
                                                                                             'hashname' => '__STRING2__',
                                                                                             'description' => '\'\\}\'',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 65
                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                    bless( {
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 65,
                                                                                             'code' => '{  
	$return = { 
		simple   => 0, 
		type     => \'hash\',
		elements => $item{\'hash_element(s)\'}
	};

	# This is a temporary hack to make hashs return anyType so that
	# we can move forward with using the new syntax while I work on the actual
	# implmentation
	$return = {
		simple => 1,
		multiple => 0,
		type => \'anyType\',
		optional => 1,
	};
}'
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'line' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'name' => 'hash',
                                                 'vars' => '',
                                                 'line' => 65
                                               }, 'Parse::RecDescent::Rule' ),
                              'one_way' => bless( {
                                                    'impcount' => 0,
                                                    'calls' => [],
                                                    'changed' => 0,
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'number' => '0',
                                                                          'strcount' => 1,
                                                                          'dircount' => 0,
                                                                          'uncommit' => undef,
                                                                          'error' => undef,
                                                                          'patcount' => 0,
                                                                          'actcount' => 1,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'pattern' => '_ONEWAY',
                                                                                                'hashname' => '__STRING1__',
                                                                                                'description' => '\'_ONEWAY\'',
                                                                                                'lookahead' => 0,
                                                                                                'line' => 112
                                                                                              }, 'Parse::RecDescent::Literal' ),
                                                                                       bless( {
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'lookahead' => 0,
                                                                                                'line' => 112,
                                                                                                'code' => '{ $return = \'oneway\'; }'
                                                                                              }, 'Parse::RecDescent::Action' )
                                                                                     ],
                                                                          'line' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'name' => 'one_way',
                                                    'vars' => '',
                                                    'line' => 112
                                                  }, 'Parse::RecDescent::Rule' ),
                              'comment' => bless( {
                                                    'impcount' => 0,
                                                    'calls' => [],
                                                    'changed' => 0,
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'number' => '0',
                                                                          'strcount' => 0,
                                                                          'dircount' => 1,
                                                                          'uncommit' => undef,
                                                                          'error' => undef,
                                                                          'patcount' => 1,
                                                                          'actcount' => 1,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'hashname' => '__DIRECTIVE1__',
                                                                                                'name' => '<skip:\'[ \\t]*\'>',
                                                                                                'lookahead' => 0,
                                                                                                'line' => 40,
                                                                                                'code' => 'my $oldskip = $skip; $skip=\'[ \\t]*\'; $oldskip'
                                                                                              }, 'Parse::RecDescent::Directive' ),
                                                                                       bless( {
                                                                                                'pattern' => '.*\\n+',
                                                                                                'hashname' => '__PATTERN1__',
                                                                                                'description' => '/.*\\\\n+/',
                                                                                                'lookahead' => 0,
                                                                                                'rdelim' => '/',
                                                                                                'line' => 40,
                                                                                                'mod' => '',
                                                                                                'ldelim' => '/'
                                                                                              }, 'Parse::RecDescent::Token' ),
                                                                                       bless( {
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'lookahead' => 0,
                                                                                                'line' => 40,
                                                                                                'code' => '{ $return = $item[2]; 1; }'
                                                                                              }, 'Parse::RecDescent::Action' )
                                                                                     ],
                                                                          'line' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'name' => 'comment',
                                                    'vars' => '',
                                                    'line' => 40
                                                  }, 'Parse::RecDescent::Rule' ),
                              'simple' => bless( {
                                                   'impcount' => 0,
                                                   'calls' => [
                                                                'sigul',
                                                                'data_type',
                                                                'optional',
                                                                'comment'
                                                              ],
                                                   'changed' => 0,
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'number' => '0',
                                                                         'strcount' => 0,
                                                                         'dircount' => 1,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 0,
                                                                         'actcount' => 1,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'subrule' => 'sigul',
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'argcode' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'line' => 45
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'hashname' => '__DIRECTIVE1__',
                                                                                               'name' => '<commit>',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 45,
                                                                                               'code' => '$commit = 1'
                                                                                             }, 'Parse::RecDescent::Directive' ),
                                                                                      bless( {
                                                                                               'subrule' => 'data_type',
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'argcode' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'line' => 45
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'subrule' => 'optional',
                                                                                               'expected' => undef,
                                                                                               'min' => 0,
                                                                                               'argcode' => undef,
                                                                                               'max' => 1,
                                                                                               'matchrule' => 0,
                                                                                               'repspec' => '?',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 45
                                                                                             }, 'Parse::RecDescent::Repetition' ),
                                                                                      bless( {
                                                                                               'subrule' => 'comment',
                                                                                               'expected' => undef,
                                                                                               'min' => 0,
                                                                                               'argcode' => undef,
                                                                                               'max' => 1,
                                                                                               'matchrule' => 0,
                                                                                               'repspec' => '?',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 45
                                                                                             }, 'Parse::RecDescent::Repetition' ),
                                                                                      bless( {
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 45,
                                                                                               'code' => '{ 
	$return = {
		simple   => 1,
		multiple => $item{\'sigul\'},
		type     => $item{\'data_type\'},
		optional => ($item{\'optional(?)\'}->[0])?1:0,
		docs     => Pod::WSDL2::Doc->new($item{\'comment(?)\'}->[0])
	};
}'
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'name' => 'simple',
                                                   'vars' => '',
                                                   'line' => 45
                                                 }, 'Parse::RecDescent::Rule' )
                            },
                 '_AUTOTREE' => undef,
                 '_check' => {
                               'thisoffset' => '',
                               'itempos' => '',
                               'prevoffset' => '',
                               'prevline' => '',
                               'prevcolumn' => '',
                               'thiscolumn' => ''
                             },
                 '_AUTOACTION' => undef
               }, 'Parse::RecDescent' );
}