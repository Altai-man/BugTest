use v6;

use Test;
use Foo::Bar;

my $path = foo('file.txt');
is $path.slurp, '', 'Good file';

$path = foo('file.txt.i.dont.exist');
is $path, Nil, 'Undefined resource is Nil';

# ok 1 - Good file
# not ok 2 - Undefined resource is Nil
# # Failed test 'Undefined resource is Nil'
# # at t/01-basic.t line 10
# # expected: (Nil)
# #      got: '/home/koto/Work/Foo-Bar/resources/file.txt.i.dont.exist'
# 1..2
# # Looks like you failed 1 test of 2

done-testing;
