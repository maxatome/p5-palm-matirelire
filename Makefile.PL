use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME           => 'Palm::MaTirelire',
    VERSION	   => '1.10',
    PREREQ_PM      => { 'Palm::PDB' => '1.29' },
    ABSTRACT	   => 'Superclass handler for Palm MaTirelire databases',
    AUTHOR         => 'Maxime Soulé <max@ma-tirelire.net>',
);
