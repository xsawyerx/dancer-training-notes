use Dancer2;

get '/set_cookie' => sub {
    cookie lang => 'American';
    cookie lang => 'American', expires => '2 hours';
    redirect '/get_cookie';
};

get '/get_cookie' => sub {
    my $cookie = cookies->{'lang'};
    return $cookie->value;
};
