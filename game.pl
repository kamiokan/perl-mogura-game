#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use open IO => qw/:encoding(Shift_JIS) :std/;

print "モグラたたきゲームをしましょう\n";
print "たたく穴の番号を1~3から選んで入力してください。\n";
print "|  1  |  2  |  3  |\n";
print "|(^o^)|(^o^)|(^o^)|\n";

my $hit = 0;
my $i = 1;
while ($i <= 10) {
  print "$i 回目: ";
  my $punch = <stdin>;
  my $hole=int(rand 3) + 1;
  if($punch == $hole){
    $hit++;
    print "ヒット！ 現在のポイントは $hit 点\n";
    if($hole == 1) {print "|(*_*)|     |     |\n";}
    if($hole == 2) {print "|     |(*_*)|     |\n";}
    if($hole == 3) {print "|     |     |(*_*)|\n";}
  } else {
    print "はずれ～～～！ 現在のポイントは $hit 点\n";
    if($hole == 1) {print "|(^o^)|     |     |\n";}
    if($hole == 2) {print "|     |(^o^)|     |\n";}
    if($hole == 3) {print "|     |     |(^o^)|\n";}
  }
  $i++;
}
print "アナタの成績= $hit 点\n";
if($hit >= 6){
  print "あなたはもぐらたたき名人です。 \(^o^)/\n";
} elsif($hit >= 3){
  print "まぁまぁですね~~ (^_^)d\n";
}else{
  print "運が無いですね~ (-_-;)\n";
}
