#!/usr/bin/perl

use utf8;

if (@ARGV == 1) {
    open STDIN, "<$ARGV[0]" or die "$0: cannot open $ARGV[0]!\n";
}

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";


while (<STDIN>) {
    s/\. / \. /g;
    s/\.(\D)/\. $1/g;
    s/(\d)\.(\d)/$1DOTTKN$2/g;
    s/(\d)\:(\d)/$1COLONTKN$2/g;
    s/(\d)\,(\d)/$1COMATKN$2/g;

    s/\W/ $& /g;

    s/(\d)DOTTKN(\d)/$1\.$2/g;
    s/(\d)COLONTKN(\d)/$1\:$2/g;
    s/(\d)COMATKN(\d)/$1$2/g;
    s/([a-zA-Z])(\d)/$1 $2/g;
    s/(\d)([a-zA-Z])/$1 $2/g;

    my @words = split ' ', $_;
    foreach (@words)
    {
     
      #s/(.....).*/$1/g;
      print;
      print " ";

    } 
    print "\r\n";
    
}








