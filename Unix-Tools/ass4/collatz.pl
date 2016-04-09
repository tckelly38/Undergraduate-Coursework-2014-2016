#~/usr/bin/perl -w
#assign4
#tck13
use strict;
use integer;
foreach my $arg (@ARGV){
  step($arg); 
}
sub step {
  my $var = @_[0];
  my $count = 0;
  while($var != 1){
    if($var % 2 == 0){
      $var/=2;
      $count++;
    }
    else{
      $var = ($var * 3) + 1;
      $count = $count + 1;
    }
  }
  print "The number of Collatz steps for '@_' are $count.\n";
}

