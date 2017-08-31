use v6;

use Test;
use Foo::Bar;

my $path = foo('file.txt');
is $path.slurp, '', 'Good file';

my $path = foo('file.txt.i.dont.exist');
is $path, Nil, 'Undefined resource is Nil';

done-testing;
