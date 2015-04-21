use Dancer2;

get '/:id' => sub {
    my $param = param('id');

    # or

    my $param = params->{'id'};
};

post '/big/request' => sub {
    my $params = params;
    my $id     = params->{'id'};
};
