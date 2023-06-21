#!/usr/bin/perl
use strict;
use warnings;

my $log_file = "/var/log/syslog";

open(my $fh, "<", $log_file) or die "Não foi possível abrir o arquivo $log_file: $!";
while (my $line = <$fh>) {
    if ($line =~ /error/i) {
        print "Erro detectado no log do sistema: $line";
    }
}
close($fh);
