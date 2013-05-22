#!/usr/bin/perl
#

use strict;
use warnings;

while ( <STDIN> ) {
    if (/^From: /){ # does it begin with From:? If yes ...
        if (/merlyn/) { #it's from merlyn!
            print "Email from Randal! It's about time!\n";
        }
        last; # no need to keep looking for From: , so exit
    } # end "if From:"
    if(/^$/) { # blank line?
        last; # if so, don't check any more lines
    }
}#end while
