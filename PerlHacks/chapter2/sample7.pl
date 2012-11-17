#!/usr/bin/perl 

use strict;
use warnings;
use IO::Prompt;

my $device = prompt 'Activate which device?',
                    -menu => [
                        'Sharks with "laser" beams',
                        'Disinhibiter gas grenades',
                        'Death ray',
                        'Mirror ball',
                    ];

print "Activating $device in 10:00 and counting ...\n\n";

# pass the `-menu` option a hash reference
$device = prompt 'Initiate which master plan?',
                 -menu => {
                     Cousteau => 'Sharks with "laser" beams',
                     Libido => 'Disinhibiter gas grenades',
                     Friar => 'Death ray',
                     Shiny => 'Mirror ball',
                 };

print "Activating $device in 10:00 and counting ...\n\n";

$device = prompt 'Select your platform:', 
                 -menu => {
                     Windows => [ 'WinCE', 'WinME', 'WinNT' ],
                     MacOS => { 
                         'MacOS 9' => 'Mac (Classic)',
                         'MacOS X' => 'Mac (New Age)',
                     },
                     Linux => 'Linux',
                 };


