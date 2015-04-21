use Dancer2;

get '/' => sub {
    core 'Core message'; # us
    debug 'Debug message';
    info 'Info message';
    warning 'Warning message';
    error 'Error message';
};
