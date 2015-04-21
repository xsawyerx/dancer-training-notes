use Dancer2;

# at first
get '/about' => sub { template 'about' };
get '/admin' => sub { template 'admin' };

# then
get '/:page' => sub { template param('page') };

# lastly
get '/:page/:inner' => sub {
    template param('page') . '/' . param('inner');
};

# or simply...
set autopage => 1;

# or in config.yml:
# autopage: 1

1;
