package MyApp;

use Dancer2;
get '/' => sub { 'Hello' };

package main;

# fails:
__PACKAGE__->to_app;

# succeeds:
MyApp->to_app;
