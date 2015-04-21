use Dancer2;

get '/' => sub {
    return to_json {...};
};

post '/' => sub {
    my $data = from_json request->body;
    return to_json $new_data;
};

# or

set serializer => 'JSON';

# or in config.yml:
# serializer: "JSON"

1;
