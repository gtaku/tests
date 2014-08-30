package ClassA;

use strict;
use warnings;

sub import
{
    my ($class, @funcs) = @_;
    my $caller = (caller)[0];
    no strict 'refs';
    for my $func (@funcs) {
        *{"$caller\:\:$func"} = *{"$class\:\:$func"};
    }
}

sub unimport
{
    my ($class, @funcs) = @_;
    my $caller = (caller)[0] . '::';
    no strict 'refs';
    for my $func (@funcs) {
        delete $caller->{$func};
    }
}

sub funcA
{
    print "A\n";
}

sub funcB
{
    print "B\n";
}

1;
__END__

