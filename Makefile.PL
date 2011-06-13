use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

my %parms = (
    NAME              => 'HTML::Perlinfo',
    VERSION_FROM      => 'lib/HTML/Perlinfo.pm',
    EXE_FILES         => [ 'perlinfo' ],
    LICENSE           => 'perl',
    AUTHOR   => 'Mike Accardo (accardo@cpan.com)',
    
);


if ( $ExtUtils::MakeMaker::VERSION ge '6.46' ) {
    $parms{META_MERGE} = {
        resources => {
            license     => 'http://dev.perl.org/licenses/',
            repository  => 'git://github.com/mixedconnections/HTML-Perlinfo.git',
        }
    };
}

WriteMakefile( %parms );
