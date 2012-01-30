
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "KING OF CMS",
  "AUTHOR" => "Devin Austin <dhoss\@cpan.org>",
  "BUILD_REQUIRES" => {
    "FindBin" => 0,
    "HTTP::Request::Common" => 0,
    "Test::DBIx::Class" => "0.28",
    "Test::More" => "0.88",
    "Test::WWW::Mechanize::PSGI" => "0.35"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Grimlock",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Grimlock",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Catalyst" => 0,
    "Catalyst::Controller::REST" => 0,
    "Catalyst::Model::DBIC::Schema" => 0,
    "Catalyst::Runtime" => "5.80",
    "Catalyst::View::JSON" => 0,
    "Catalyst::View::TT" => 0,
    "DBIx::Class::Candy" => 0,
    "DBIx::Class::Core" => 0,
    "DBIx::Class::ResultSet" => 0,
    "DBIx::Class::Schema" => 0,
    "Data::Dumper" => 0,
    "Email::Sender::Simple" => 0,
    "Email::Simple" => 0,
    "Email::Simple::Creator" => 0,
    "HTML::Scrubber" => 0,
    "Moose" => 0,
    "Text::Password::Pronounceable" => 0,
    "Try::Tiny" => 0,
    "base" => 0,
    "namespace::autoclean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.001",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



