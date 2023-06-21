#!/usr/bin/perl
use strict;
use warnings;

my $threshold = 70;

my $df_output = `df -h`;
my @lines = split("\n", $df_output);
shift @lines;

foreach my $line (@lines) {
    my ($filesystem, $size, $used, $avail, $use_percent, $mounted_on) = split(" ", $line);
    if ($use_percent =~ /^(\d+)/) {
        my $usage = $1;
        if ($usage >= $threshold) {
            print "Espaço em disco crítico: $filesystem está com $usage% de uso.\n";
        }
    }
}
