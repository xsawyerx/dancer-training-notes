package MyApp::Classes;
use Dancer2;

# classes
prefix '/classes' => sub {
    get  '/'    => sub {...};
    get  '/:id' => sub {...};
    post '/'    => sub {...};
    del  '/:id' => sub {...};
};

1;
