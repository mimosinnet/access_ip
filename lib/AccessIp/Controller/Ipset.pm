package AccessIp::Controller::Ipset;
use Mojo::Base 'Mojolicious::Controller';

sub get_ip {
  my $self = shift;

	$self->render(msg => 'Get IP address!');
}

sub print_ip {
  my $self = shift;

	my $d1 = $self->param("d1");
	my $d2 = $self->param("d2");
	my $d3 = $self->param("d3");
	my $d4 = $self->param("d4");
	my $host = "$d1.$d2.$d3.$d4";

	$self->render(
		host  => $host,
	);
		
}

sub set_ip {
	my $self = shift;

	my $host =$self->param("host");

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
