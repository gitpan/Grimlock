package Grimlock::Schema::Result::User;

use Grimlock::Schema::Candy -components => [
  qw(
      InflateColumn::DateTime
      TimeStamp
      Helper::Row::ToJSON
      EncodedColumn
      )
];
use Data::Dumper;
use Text::Password::Pronounceable;

resultset_class 'Grimlock::Schema::ResultSet::User';

primary_column userid => {
  data_type => 'int',
  is_auto_increment => 1,
  is_nullable => 0,
};

unique_column name => {
  data_type => 'varchar',
  size => 200,
  is_nullable => 0,
};

column password => {
  data_type => 'char',
  size => 60,
  is_nullable => 0,
  encode_column => 1,
  encode_class  => 'Crypt::Eksblowfish::Bcrypt',
  encode_args   => { key_nul => 1, cost => 8 },
  encode_check_method => 'check_password',
};

column created_at => {
  data_type => 'datetime',
  is_nullable => 0,
  set_on_create => 1,
};

column updated_at => {
  data_type => 'datetime',
  is_nullable => 1,
  set_on_create => 1,
  set_on_update => 1,
};

unique_column email => {
  data_type => 'varchar',
  size      => 255,
  is_nullable => 1,
};

has_many 'entries' => 'Grimlock::Schema::Result::Entry', {
  'foreign.author' => 'self.userid',
};

has_many 'user_roles' => 'Grimlock::Schema::Result::UserRole', {
  'foreign.userid' => 'self.userid'
};

many_to_many 'roles' => 'user_roles', 'role';

sub insert {
  my ( $self, @args ) = @_;
  
  my $guard = $self->result_source->schema->txn_scope_guard;
  $self->next::method(@args);
  $self->add_to_roles({ name => "user" });
  $guard->commit;

  return $self;
}

sub has_role {
  my ( $self, $role ) = @_;
  return $self->user_roles->search_related('role',
    {
      name => $role
    }
  )->count;
}

sub entry_count {
  my $self = shift;
  return $self->entries->count;
}

sub reply_count {
  my $self = shift;
  return $self->entries->search({ parent => { '!=', undef }})->count;
}

sub generate_random_pass {
  my $self = shift;
  Text::Password::Pronounceable->generate(6,10);
}

sub create_entry {
  my ( $self, $params ) = @_;
  $self->add_to_entries($params);
}

1;
