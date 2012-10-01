
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "be like GETTY (without the insanity hopefully) -- use what drives his gears",
  "AUTHOR" => "Torsten Raudssus <torsten\@raudss.us>",
  "BUILD_REQUIRES" => {
    "Test::More" => "0.96"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-BeLike-GETTY",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Task::BeLike::GETTY",
  "PREREQ_PM" => {
    "App::Ack" => "2.00",
    "App::CPAN::Fresh" => "0.10",
    "App::cpanminus" => 0,
    "Catalyst" => 0,
    "Crypt::SSLeay" => 0,
    "DBIx::Class" => 0,
    "DBIx::Class::AlwaysUpdate" => 0,
    "DateTime" => "0.51",
    "Devel::NYTProf" => 0,
    "Dist::Zilla" => 4,
    "Dist::Zilla::PluginBundle::GETTY" => "0.003",
    "IO::Socket::SSL" => 0,
    "JSON" => "2.12",
    "LWP::Protocol::https" => 0,
    "Moo" => "1.000003",
    "MooX" => "0.101",
    "MooX::Cmd" => "0.002",
    "MooX::Options" => "3.71",
    "Moose" => "2.0604",
    "Mozilla::CA" => 0,
    "Plack" => 0,
    "Pod::Weaver" => "3.101631",
    "Reflex" => "0.098",
    "Reflexive::Client::HTTP" => "0.003",
    "Scalar::Util" => "1.18",
    "Text::Markdown" => "v1.0.24",
    "Web::Simple" => 0
  },
  "VERSION" => "20121001.000",
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



