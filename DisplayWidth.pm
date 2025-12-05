package Text::DisplayWidth ;

use 5.008;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);
our @EXPORT_OK = qw(display_width);
our @EXPORT = qw();
our %EXPORT_TAGS = ('all' => [ @EXPORT_OK ]);

our $VERSION = '0.04';

require XSLoader;
XSLoader::load('Text::DisplayWidth', $VERSION);

# Preloaded methods go here.

1;

