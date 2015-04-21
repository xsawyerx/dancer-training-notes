use Dancer2;

# render layout and render template inside it
get '/' => sub {
    # search for "views/index.$ext"
    # $ext is decided by the templating engine
    # default: Dancer2::Template::Tiny -- ".tt"
    template 'index';
};

# render template with variables
get '/:name' => sub {
    template index => {
        name => param('name'),
    };
};

# disable layout with configuration
set layout => undef;
get '/' => sub {
    template index => {};
};

# disable layout on a single call
get '/' => sub {
    template index => {} => { layout => undef };
};
