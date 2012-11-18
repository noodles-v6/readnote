use strict;
use warnings;
use Module::Build::Configurator;

my $build = Module::Build::Configurator->new(
        module_name => 'User::IrisScan',
        config_module => 'User::IrisScan::Config',
        config_questions => [
            [ 'What is your name?', 'name', 'noodles' ],
            [ 'Rate yourself as a spy from 1 to 10.', 'rating', '10' ],
            [ 'What is your eye color?', 'eye_color', 'black' ], 
        ],
    );

$build->create_build_script();
