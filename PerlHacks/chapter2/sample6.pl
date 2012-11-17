#!/usr/bin/perl 

use strict;
use warnings;
use IO::Prompt;

my $offset = prompt("Enter an offset: ", -integer);

my $hex_num = prompt("Enter a hex number> ", 
        -req => { "A hex number please!> " => qr/^[0-9A-F]+$/i }
        );

print "That is ", hex($hex_num), " in base 10\n";

my $factor = prompt(
        "Enter a prime: ", -req => { "Try again: " => sub { print "\nu enter a prime\n";}}
        );

if (prompt -YESNO, "Quit?") {
    print "system is saving changes\n" 
        if prompt -yes, "Save changes? ";
    
    print "exit\n";
}

my @matching_files = qw/ sample1.pl sample2.pl /;
for my $file (@matching_files) {
    next unless prompt -one_char, -yes, "Copy $file? ";
    print "copy $file to ./backup/$file\n";
}

my $drive = uc prompt "Select a drive: ", -one_char, 
                    -req => { "Please select A-F: " => qr/[A-F]/i };

my $passwd = prompt( "First password: ", -echo => "" );
$passwd = prompt( "Second password: ", -echo => "*" );

