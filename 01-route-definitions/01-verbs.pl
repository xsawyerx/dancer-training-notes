use Dancer2;

# GET
get '/' => sub {...};

# POST
post '/extra' => sub {...};

# PUT
put '/upload' => sub {...};

# DELETE ("delete" is taken by Perl)
del '/resources/1000' => sub {...};

# "any": OPTIONS, GET, HEAD, POST, DELETE, PUT, PATCH
any '/fail' => sub {...};

# "any" with only GET, POST
any [ 'get', 'post' ] => '/api/example' => sub {...};
