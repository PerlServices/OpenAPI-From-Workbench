#!/usr/bin/perl

use strict;
use warnings;

use OpenAPI::From::Workbench;

use Data::Printer;
use File::Basename;
use Test::More;


ok 1;

my $mwb       = dirname(__FILE__) . '/data/corbac.mwb';
my $generator = OpenAPI::From::Workbench->new(
    license        => 'GPL-1',
    email          => 'a.uthor@example.tld',
    title          => 'TimePieceDB example',
    servers        => [ 'http://test.tld' ],
    version        => '1.0.0',
    workbench_file => $mwb,
    mojo           => 1,
);

my $yaml = $generator->generate;

p $yaml;

done_testing();
