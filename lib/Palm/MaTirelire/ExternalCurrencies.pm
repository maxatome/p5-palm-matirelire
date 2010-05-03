#
# Author          : Maxime Soule
# Created On      : Wed Jun  2 11:41:30 2004
# Last Modified By: Maxime Soule
# Last Modified On: Mon May  3 14:55:16 2010
# Update Count    : 17
#
# Copyright (C) 2005, Maxime Soul�
# You may distribute this file under the terms of the Artistic
# License, as specified in the README file.
#

package Palm::MaTirelire::ExternalCurrencies;

use strict;

use Palm::BlockPack;

use Palm::MaTirelire::DBItem;

use base qw(Palm::MaTirelire::DBItem);

our $VERSION = '1.0';


# Each record
my $RECORD_BLOCK = Palm::BlockPack->new
    ('N'	=> [ 'integer_part'	=> 1 ],
     'N'	=> [ 'decimal_part'	=> 0 ],
     'N'	=> [ 'decimal_factor'	=> 1 ],
     'N'	=> [ 'euros'		=> 1 ],
     'Z4'	=> [ 'iso4217'		=> '???' ],
     );


sub import
{
    &Palm::PDB::RegisterPDBHandlers(__PACKAGE__, [ "MaT2", 'CurX' ]);
}


sub meta_infos ($)
{
    return { name => "MaTi-ExternalCurrencies",
	     type => "CurX",
	     record_block  => $RECORD_BLOCK,
	   };
}

1;
__END__

=head1 NAME

Palm::MaTirelire::ExternalCurrencies - Handler for Palm MT v2 ext-currencies DB

=head1 SYNOPSIS

  use Palm::MaTirelire::ExternalCurrencies;

=head1 DESCRIPTION

The MaTirelire::ExternalCurrencies PDB handler is a helper class for
the Palm::PDB package.
It parses Palm Ma Tirelire v2 external currencies database.

To be done XXX...

=head1 SEE ALSO

Palm::MaTirelire(3)

Palm::MaTirelire::DBItem(3)

Palm::MaTirelire::Currencies(3)

Palm::MaTirelire::AccountsV2(3)

=head1 AUTHOR

Maxime Soul�, E<lt>max@Ma-Tirelire.netE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005 by Maxime Soul�

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.5 or,
at your option, any later version of Perl 5 you may have available.

=cut
