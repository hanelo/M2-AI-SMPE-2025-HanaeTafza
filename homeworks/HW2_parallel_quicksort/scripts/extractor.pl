
#!/usr/bin/perl -w
use strict;

print "threads;size;time_ms\n";

while (<>) {
    if (/nbthr=(\d+).*n=(\d+).*elapsed=([\d\.]+)/) {
        print "$1;$2;$3\n";
    }
}
