use Dancer2;

get '/' => sub {
    return to_json { key => 'value' };
};

get '/' => sub {
    my $path = request->path;
    my $user = request->user;
    my $body = request->body;

    my $params = from_json $body;
};
