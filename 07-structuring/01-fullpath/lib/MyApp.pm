package MyApp;
use Dancer2;

# main
get '/' => sub {...};

# users
get  '/users/'    => sub {...};
get  '/users/:id' => sub {...};
post '/users/'    => sub {...};
del  '/users/:id' => sub {...};

# classes
get  '/classes/'    => sub {...};
get  '/classes/:id' => sub {...};
post '/classes/'    => sub {...};
del  '/classes/:id' => sub {...};

1;
