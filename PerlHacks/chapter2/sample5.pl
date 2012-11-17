#!/usr/bin/perl -w

use strict;
use IO::Interactive qw( is_interactive );

my $offset;
print "Enter an offset: " if is_interactive;

GET_OFFSET:
    while (<>) {
        chomp;
        if (m/\A [+-] \d+ \z/x) {
            $offset = $_;
            last GET_OFFSET;
        }

        print "Enter an offset (please enter an integer): " 
            if is_interactive;
    }

