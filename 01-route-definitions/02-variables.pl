use Dancer2;

# GET with a named parameter
get '/:name' => sub {
    my $name = param('name');
    ...
}; # matches: /sawyer ($name = "sawyer")

# same, but with no name - wildcard (splat)
get '/*' => sub {
    my ($name) = splat;
}; # matches: /sawyer ($name = "sawyer")

# using a greedy wildcard (megasplat)
get '/**' => sub {
    my ($vars) = splat;
}; # matches: /say/sawyer ($vars = [ "say", "sawyer" ])

# using regular with greedy wildcard
get '/entry/*/tags/**' => sub {
    my ( $entry, $tags ) = @{ splat };
    my @tags = @{$tags};
}; # matches: /entry/30/tags/a/b ($entry = 30, @tags = "a", "b")
