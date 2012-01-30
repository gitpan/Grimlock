package Grimlock::Web::Controller::API;
{
  $Grimlock::Web::Controller::API::VERSION = '0.04';
}

use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller::REST' };

__PACKAGE__->config(
 'default'                              => 'text/html',
  map => {
    'text/html'                         => [ 'View', 'HTML' ],
    'application/json'                  => [ 'View', 'JSON' ],
    'text/x-data-dumper'                => [ 'Data::Serializer', 'Data::Dumper' ],
  }
);

sub base : Chained('/') PathPart('') CaptureArgs(0) {}


__PACKAGE__->meta->make_immutable;
1;
