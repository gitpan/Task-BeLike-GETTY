
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "be like GETTY (without the insanity hopefully) -- use what drives his gears",
  "AUTHOR" => "Torsten Raudssus <torsten\@raudss.us>",
  "BUILD_REQUIRES" => {},
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
    "App::cpanminus" => "1.5018",
    "CPAN::Repository" => "0.007",
    "Catalyst::Authentication::Store::DBIx::Class" => 0,
    "Catalyst::Plugin::Authentication" => 0,
    "Catalyst::Plugin::AutoCRUD" => "2.122460",
    "Catalyst::Plugin::Captcha" => 0,
    "Catalyst::Plugin::ChainedURI" => "0.002",
    "Catalyst::Plugin::CustomErrorMessage" => 0,
    "Catalyst::Plugin::Session" => 0,
    "Catalyst::Plugin::Session::State::Cookie" => 0,
    "Catalyst::Plugin::Session::Store::File" => 0,
    "Catalyst::Plugin::StackTrace" => 0,
    "Catalyst::Plugin::Unicode::Encoding" => 0,
    "Catalyst::Runtime" => "5.90016",
    "Catalyst::View::Email::Template" => 0,
    "Catalyst::View::JSON" => 0,
    "Catalyst::View::TT" => 0,
    "Config::INI" => "0.019",
    "Crypt::SSLeay" => 0,
    "DBIx::Class" => "0.08200",
    "DBIx::Class::AlwaysUpdate" => 0,
    "DBIx::Class::Candy" => "0.002101",
    "DBIx::Class::EncodedColumn" => "0.00011",
    "DBIx::Class::EncodedColumn::Crypt::Eksblowfish::Bcrypt" => 0,
    "DBIx::Class::InflateColumn::DateTime" => 0,
    "DBIx::Class::InflateColumn::Serializer" => "0.03",
    "DBIx::Class::TimeStamp" => 0,
    "Data::Printer" => "0.33",
    "DateTime" => "0.77",
    "DateTime::Format::Epoch" => "0.13",
    "DateTime::Format::Human::Duration" => "0.60",
    "DateTime::Format::Strptime" => "1.52",
    "Devel::NYTProf" => 0,
    "Dist::Data" => "0.003",
    "Dist::Zilla" => 4,
    "Dist::Zilla::PluginBundle::GETTY" => "0.003",
    "Email::Valid" => "0.185",
    "FCGI" => "0.74",
    "File::ShareDir::ProjectDistDir" => "v0.3.2",
    "File::Temp" => 0,
    "HTTP::Message" => 0,
    "IO::All" => "0.46",
    "IO::Socket::SSL" => 0,
    "JSON" => "2.53",
    "JSON::XS" => "2.33",
    "LWP::Protocol::https" => 0,
    "LWP::UserAgent" => 0,
    "Locale::Simple" => "0.002",
    "Module::Data" => "0.006",
    "Moo" => "1.000003",
    "MooX" => "0.101",
    "MooX::Cmd" => "0.002",
    "MooX::HasEnv" => 0,
    "MooX::Options" => "3.71",
    "Moose" => "2.0604",
    "MooseX::Getopt" => 0,
    "MooseX::NonMoose" => 0,
    "Mozilla::CA" => 0,
    "Path::Class" => "0.26",
    "Path::ScanINC" => "0.002",
    "Plack" => "1.0004",
    "Plack::Middleware::Debug" => 0,
    "Reflex" => "0.098",
    "Reflexive::Client::HTTP" => "0.003",
    "Scalar::Util" => "1.18",
    "String::ProgressBar" => 0,
    "Template" => "2.22",
    "Template::Provider::Encoding" => 0,
    "Test::Dirs" => 0,
    "Test::LoadAllModules" => 0,
    "Test::More" => 0,
    "Text::Markdown" => "v1.0.24",
    "Text::Xslate" => "1.5018",
    "URI" => 0,
    "URL::Encode" => 0,
    "Web::Simple" => "0.020",
    "YAML" => "0.84"
  },
  "TEST_REQUIRES" => {
    "Test::LoadAllModules" => "0.021",
    "Test::More" => "0.96"
  },
  "VERSION" => "20130420.000",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

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



