use v6;

unit class Foo::Bar;

our sub foo(*@path) is export {
    my $path = (|@path).join('/');
    %?RESOURCES{$path}
}