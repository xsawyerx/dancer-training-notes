use Dancer2;

get '/' => sub {
    header 'X-Foo' => 'First';  # X-Foo: First
    header 'X-Foo' => 'Second'; # X-Foo: Second

    push_header 'X-Foo' => 'Third'; # X-Foo: Second, X-Foo: Third
};

__PACKAGE__->to_app;
