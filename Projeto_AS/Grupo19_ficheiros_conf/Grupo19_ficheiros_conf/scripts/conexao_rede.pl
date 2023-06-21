#!/usr/bin/perl
use strict;
use warnings;

my $ping_result = `ping -c 1 google.com`;
if ($ping_result =~ /1 packets transmitted, 1 received/) {
    print "Conexão de rede está funcionando.\n";
} else {
    print "Falha na conexão de rede.\n";
}
