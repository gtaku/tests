# ClassA.pm
package ClassA;
use strict;
use warnings;
use base qw(Class::Accessor);

__PACKAGE__->mk_accessors(qw/foo bar baz/);

1;

# ClassB.pm
package ClassB;
use strict;
use warnings;
use base qw(Class::Accessor);

__PACKAGE__->mk_accessors(qw/foo bar/);

# Overriding 'new'
sub new
{
    # use NEXT;
    # my $self = shift->NEXT::new(@_); # for Multiple Inheritance
    my $self = shift->SUPER::new(@_);
    $self->bar($self->foo * 2);
    return $self;
}

1;

# main.pl
package main;
use strict;
use warnings;

use ClassA;
use ClassB;

my $objA = ClassA->new({
    foo => 1,
    bar => 2,
    baz => 3
});
print $objA->foo, "\n"; # 1

my $objB = ClassB->new({
    foo => 2
});
print $objB->bar, "\n"; # 4

