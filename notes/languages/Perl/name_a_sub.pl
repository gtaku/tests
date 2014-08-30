use strict;
use warnings;

use Carp;
use Sub::Name;

my $f = subname foo => sub {
    confess 'Insufficient arguments' if @_ < 2;
    my ($x, $y) = @_;
    return $x + $y;
};

print $f->(2, 3), "\n"; # 5
print $f->(1), "\n"; # Insufficient arguments at main.pl line 8.
                     #    main::foo(1) called at main.pl line 14

