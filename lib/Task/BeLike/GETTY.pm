use strict;
use warnings;
package Task::BeLike::GETTY;
BEGIN {
  $Task::BeLike::GETTY::AUTHORITY = 'cpan:GETTY';
}
{
  $Task::BeLike::GETTY::VERSION = '20121001.000';
}
# ABSTRACT: be like GETTY (without the insanity hopefully) -- use what drives his gears


1;

__END__
=pod

=head1 NAME

Task::BeLike::GETTY - be like GETTY (without the insanity hopefully) -- use what drives his gears

=head1 VERSION

version 20121001.000

=head1 TASK CONTENTS

=head2 Perl itself

=head3 L<perl> 5.010001

You should have at least 5.10.1

=head2 Useful Command-Line Tools

=head3 L<App::Ack> 2.00

Because grep is outdated

=head2 Working with CPAN distributions

=head3 L<App::cpanminus>

Because I dont want useless crap on my screen.

=head3 L<App::CPAN::Fresh> 0.10

Installs latest version of the dist... for the people who cant wait to get
their own release on other machines ;)

=head2 Object orientated working

=head3 L<Moo> 1.000003

Cause it cost nothing and makes the code nice.

=head3 L<MooX> 0.101

An easier way to load Moo and MooX plugins for it.

=head3 L<Moose> 2.0604

The ultimate power in the universe to make classes

=head2 Application Frameworks

=head3 L<MooX::Cmd> 0.002

L<MooX::Cmd> together with L<MooX::Options> gives you the ability to make easy
multicommand application.

=head3 L<MooX::Options> 3.71

=head2 Event driven, non-blocking environment

=head3 L<Reflex> 0.098

Because L<POE> is really outdated (and too complex)

=head3 L<Reflexive::Client::HTTP> 0.003

Never saw a non-blocking environment which not used some HTTP client
somewhere in the process hehe :).

=head2 Database

=head3 L<DBIx::Class>

There is no other way to access a database

=head3 L<DBIx::Class::AlwaysUpdate>

=head2 Tools for authoring CPAN Distributions

=head3 L<Dist::Zilla> 4

=head3 L<Dist::Zilla::PluginBundle::GETTY> 0.003

=head3 L<Pod::Weaver> 3.101631

Version 3.101631 required because: it understands PODNAME comments

=head2 Web frameworks

=head3 L<Catalyst>

For serious web application development

=head3 L<Web::Simple>

For the simple stuff

=head3 L<Plack>

The base for all those frameworks, and the best way to make your own base
for a webframework, even tho, you normally should be happy with L<Web::Simple>
and L<Catalyst>, but it gives interesting background knowledge to know
L<Plack> and PSGI. See L<http://plackperl.org/>.

=head2 Other Libraries I Use

=head3 L<DateTime> 0.51

Version 0.51 required because: provides CLDR support with fewest known bugs

Working with timestamps is just wrong.

=head3 L<Devel::NYTProf>

The most heavy overall debugging possible. Try it out once, to know what you
have.

=head3 L<JSON> 2.12

Version 2.12 required because: fixes unicode handling from ASCII JSON

The most effective data storage way.

=head3 L<Scalar::Util> 1.18

Nice toolset, check it out and get it known.

=head3 L<Text::Markdown> 1.0.24

Version 1.0.24 required because: has trust_list_start

For making nice GitHub README and wiki pages.

=head2 Sanity-Check

These are just here to make sure other things work properly.

=head3 L<Mozilla::CA>

=head3 L<Crypt::SSLeay>

=head3 L<LWP::Protocol::https>

=head3 L<IO::Socket::SSL>

=head1 AUTHOR

Torsten Raudssus <torsten@raudss.us>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

