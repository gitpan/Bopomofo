package Bopomofo;

use strict;
use utf8;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

#Copyright (c) 2004 Jason Toy (朱仲光)  <toy@cpan.org>
#This module is under the BSD license


# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Bopomofo ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);

our $VERSION = '0.2';


# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Bopomofo - Perl extension for converting Chinese both ways between pinyin and bopomofo

=head1 SYNOPSIS

  use Bopomofo;
  my $pinyin = bopo_to_pin($bopo);

=head1 METHODS

=over 4

=item C<bopo_to_simp($text)>

A map of pinyin sounds to Taiwanese bopomofo (zhuyin) sounds. 

=head2 EXPORT

None by default.



=head1 SEE ALSO

http://jtoy.net/program/perl

http://jtoy.net/cpan/cpan.html

=head1 AUTHOR

Jason Toy (朱仲光) E<lt>toy@cpan.org<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by Jason Toy (�仲光) . This is licensed under the BSD license.

=cut
