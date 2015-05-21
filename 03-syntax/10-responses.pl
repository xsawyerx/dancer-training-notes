use Dancer2;

get '/yes' => sub {
    redirect '/no';
    die "No, you won't...";
};

get '/no' => sub {'No'};

get '/no_really' => sub {
    forward '/no';
};

get '/error' => sub {
    send_error(404);

    # or

    send_error( 'Cannot find resource', 404 );

    # or

    send_error('Internal Server Error: iz bad'); # default: 500
};
