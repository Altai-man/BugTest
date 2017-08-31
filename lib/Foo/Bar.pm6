use v6;

unit class Foo::Bar;

sub foo() is export {
    %?RESOURCES<file.txt.doesnt.exist>;
}
