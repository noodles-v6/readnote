package User::IrisScan::Config;

my $config_data = {
                 'eye_color' => 'black',
                 'name' => 'noodles',
                 'rating' => '10'
               };
 

sub get_value {
    my ($class, $key ) = @_;
    return unless exists $config_data->{ $key };
}
1;
