#!/usr/bin/perl
use strict;
use warnings;

my $source_dir = "/etc/apache2/sites-available";
my $backup_dir = "~/backups";
my $date = `date +%Y%m%d-%H:%M:%S`;
chomp($date);

system("cp -r $source_dir $backup_dir/backup_$date");
