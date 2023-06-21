#!/usr/bin/perl
use strict;
use warnings;

my $service_name = shift @ARGV;
die "É necessário fornecer o nome do serviço como argumento." unless $service_name;

system("systemctl restart $service_name");
