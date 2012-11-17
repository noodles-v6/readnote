#!/usr/bin/perl -w

use strict;

print '> ' if -t *ARGV && -t select;
while (my $next_cmd = <>) {
    chomp $next_cmd;
    process($next_cmd);
    print '> ' if -t *ARGV && -t select;
}

