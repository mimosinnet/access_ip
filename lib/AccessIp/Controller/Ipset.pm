package AccessIp::Controller::Ipset;
use Mojo::Base 'Mojolicious::Controller';

sub get_ip {
  my $self = shift;

	my $ip = $self->req->headers->header('X-Real-IP');

	$self->render(myip => $ip);
}

sub set_ip {
	my $self = shift;

	my $host =$self->param("myip");

	my $filename = 'data/ip.txt';
	open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
	print $fh $host;
	close $fh;

	$self->render(
		host => $host,
	);


}

1;

# vim: tabstop=2
