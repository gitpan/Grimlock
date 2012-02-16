package Grimlock::Web::Model::Database;
{
  $Grimlock::Web::Model::Database::VERSION = '0.07';
}

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'Grimlock::Schema',
    
    
);

=head1 NAME

Grimlock::Web::Model::Database - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<Grimlock::Web>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<Grimlock::Schema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.59

=head1 AUTHOR

Devin Austin

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
