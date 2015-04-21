use Dancer2;

post '/upload' => sub {
    my $file = upload('file_input');    
    # $file = Dancer2::Core::Request::Upload
    # has:
    # filename
    # tempname
    # headers
    # size
    # copy_to
    # link_to
    # contents
    # basename
    # type
};
