package MyApp::WithoutSerializer;
use Dancer2;

# never deserialize
# never serialize
get '/' => sub { ... };

1;

package MyApp::WithSerializer;
use Dancer2;
set serializer => 'JSON';

# always deserialize
# always serialize
get '/' => sub { ... };

1;
