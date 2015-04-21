use Dancer2;

get '/' => sub { 'Hello' };

__PACKAGE__->to_app;
