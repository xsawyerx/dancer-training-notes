package MyApp;
use Dancer2;

# overrides config.yml
set variable => 'value';

set internal_variable => {
    inner_key => 'inner_value'
};
