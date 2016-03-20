package AccessIp;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('ipset#get_ip');
  $r->post('/print_ip')->to('ipset#print_ip');
  $r->post('/set_ip')->to('ipset#set_ip');
}

1;
