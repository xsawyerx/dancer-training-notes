use Dancer2;

hook before => sub {
    info "About to call " . request->path;
};

hook after => sub {
    info "Finished calling " . request->path;
};

get '/' => sub {1};
