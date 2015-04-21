package MyApp;
use Dancer2;

# main
get '/' => sub {...};

# users
prefix '/users' => sub {
    get  '/'    => sub {...};
    get  '/:id' => sub {...};
    post '/'    => sub {...};
    del  '/:id' => sub {...};
};

# classes
prefix '/classes' => sub {
    get  '/'    => sub {...};
    get  '/:id' => sub {...};
    post '/'    => sub {...};
    del  '/:id' => sub {...};
};

1;
