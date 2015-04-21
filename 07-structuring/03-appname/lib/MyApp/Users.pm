package MyApp::Users;
use Dancer2 appname => 'MyApp';

# users
prefix '/users' => sub {
    get  '/'    => sub {...};
    get  '/:id' => sub {...};
    post '/'    => sub {...};
    del  '/:id' => sub {...};
};

1;
