#!/usr/bin/env perl

use strict;
use warnings;

#Purpose: To calculate the effective genomesize or mappability roughly for GC-normalizaiton
#Input should be a sorted bam file

my $bam = shift;
my $line;
my $i = 0;
my $i2 = 0;

open(ST, "genomeCoverageBed -d -ibam $bam|");
	while ($line = <ST>){
		
	  $line =~ m/(\w+)(\s+)(\d+)(\s+)(\d+)/;
		++$i2;
		if ($5 != 0){
			++$i;
			}
        }

print "\nEffecive genomesize = $i\n";
print "Total genomesize: $i2\n";
