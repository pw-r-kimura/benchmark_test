use strict;
use warnings;
use Benchmark qw(:all);

my $result = timethese (10000,
    {
        double => sub {
            my $a = 0;
            for (my $i = 0; $i < 1000; $i++) {
                $a++;
                print "I like do it";
            }
        },
        single => sub {
            my $a = 0;
            for (my $i = 0; $i < 1000; $i++) {
                $a++;
                print 'I like do it';
            }
        }
    }
);



cmpthese $result;




