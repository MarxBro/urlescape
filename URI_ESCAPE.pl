#!/usr/bin/perl
######################################################################
# Tonteria, convierte texto plano a texto escapado, valido para URIs.
######################################################################

use URI::Escape;
use Getopt::Std;
use Pod::Usage;

=pod

=encoding utf8

=head1 SYNOPSIS

Script para codificar y decodificar URIS. Gran huevada.

=cut


my %opts = ();
getopts('oe:d:',\%opts);

=pod

=head2 Forma de uso:

=over

=item -e [URL] = Codificar

=item -d [URL] = Decodificar

=back

Los parametos B<e,d> son opuestos y no pueden ser usados al mismo tiempo.

=cut

if ($opts{e}){
    my $string = $opts{e};
    my $encode = uri_escape($string); 
    print "$encode\n";
    exit 0;
} elsif ($opts{d}){
    my $string = $opts{d}; 
    my $encode = uri_unescape($string);
    print "$encode\n";
    exit 0;
} else {
    ayudas();
}

########
# SUBS #
########
sub ayudas {
    pod2usage(-verbose=>3);
}

=pod

=head1 Autor y Licencia.

Programado por B<Marxbro> aka B<Gstv>, ditribuir solo bajo la licencia
WTFPL: I<Do What the Fuck You Want To Public License>.

Zaijian.

=cut
