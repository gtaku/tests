use strict;
use warnings;

use ClassA qw(funcA funcB);

funcA(); # A
funcB(); # B

no ClassA qw(funcB);

funcA(); # A
funcB(); # Undefined subroutine &main::funcB called at main.pl line 12.

__END__

