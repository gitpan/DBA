package DBA;

use 5.008003;
use strict;
use warnings;

our $VERSION = '0.02';


1;

=head1 NAME

DBA - This module is just a placeholder on the top level DBA namespace.

=head1 SYNOPSIS

Do not use this module directly. It currently does absolutely nothing. I don't
expect it will do anything any time soon either.

=head1 DESCRIPTION

This module is here only as a place holder and to describe the intended purpose
of modules that should be found under it. It may some day provide some extremely
basic methods, config handling or such that it turns out are common to most
projects under it, but it's unlikely there will be much in common.

This name space root was decided on as a result of discussions on the
module-authors mailing list at perl.org E<lt>module-authors@perl.orgE<gt>
regarding my MySQL backup project originally proposed as MySQL::Backup.
(http://www.nntp.perl.org/group/perl.module-authors/2964)

There was moderate interest in the module on concept. A few people were
interested in seeing the module become a base package for backing up other
RDBMS types as well. After a little thinking I concluded this was something I
could reasonably achieve, and so I suggested the DBA top name space with my
project falling under DBA::Backup. Tim Bunce responded (excerpted):

"... a DBA namespace sounds reasonable as a home for cross-database
DBA support modules. I'd recommend a structure like this:

  DBA::<activity>                           -- front-end module
  DBA::<activity>::*                        -- support modules
  DBA::<activity>::Plugin::<databasename>   -- back-end modules

...

You'll either end up with a lowest-common-denominator approach that
has too little functionality, or have so many database-specific
flags an options and whatnot that there's little benefit in having
a "common API".

Having said that, I'd be happy to see this happen if it did :)"

So here it is. I decided not to bother with ::Plugin portion, at least in the
Backup project, since all activities
in this area will require RDBMS specific drivers and, unlike DBI drivers, they
will not be in a separate namespace. Have fun, and I hope you find something
useful in here!

=head1 HISTORY

=over 8

=item 0.01

Original version, just documentation.

=item 0.02

Added mailing list information.

=back

=head1 SEE ALSO

The mailing list for the DBA modules is perl-dba@fini.net. See
http://lists.fini.net/mailman/listinfo/perl-dba to subscribe.

=head1 AUTHOR

Sean Quinlan, E<lt>gilant@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by Sean Quinlan

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.3 or,
at your option, any later version of Perl 5 you may have available.


=cut
