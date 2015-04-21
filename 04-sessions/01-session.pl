use Dancer2;

get '/set/:name' => sub {
    session name => param('name');

    # or

    session->write( name => param('name') );

    redirect '/get';
};

get '/get' => sub {
    template index => { name => session('name') };
};

get '/delete' => sub {
    session name => undef;

    # or

    session->delete('name');
};

get '/more' => sub {
    my $session_object = session;
    $session_object->read($key);
    $session_object->write( $key => $value );
    $session_object->delete($key);
};
