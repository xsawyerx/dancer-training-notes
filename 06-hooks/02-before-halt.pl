use Dancer2;

hook before => sub {
    if ( request->path eq '/forbidden' ) {
        status 'forbidden';
        response->content("It is forbidden");
        response->halt;
    }
};

get '/' => sub {1};
