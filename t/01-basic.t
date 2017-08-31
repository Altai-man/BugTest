use v6;

use Test;
use Foo::Bar;

# Inside of lib/Foo/Bar.pm6:
# sub foo() is export {
#     %?RESOURCES<file.txt.doesnt.exist>;
# }

my $path = foo;
is $path, Nil, 'Undefined resource is Nil';

# not ok 1 - Undefined resource is Nil
# # Failed test 'Undefined resource is Nil'
# # at t/01-basic.t line 7
# # expected: (Nil)
# #      got: '/home/koto/Work/Foo-Bar/resources/file.txt.doesnt.exist'
# 1..1
# # Looks like you failed 1 test of 1

done-testing;
