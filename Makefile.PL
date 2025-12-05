use 5.008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
my $is_win32 = $^O =~ /MSWin32/ ;
WriteMakefile(
    'NAME'		=> 'Text::DisplayWidth',
    'VERSION_FROM'	=> 'DisplayWidth.pm', # finds $VERSION
    'PREREQ_PM'		=> {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'DisplayWidth.pm', # retrieve abstract from module
       AUTHOR     => 'Tomohiro KUBOTA <kubota@debian.org>') : ()),
    LIBS         => $is_win32 ? ['-lunistring'] : [''], # e.g., '-lm'
    'DEFINE'		=> '', # e.g., '-DHAVE_SOMETHING'
    INC          => $is_win32 ? "'-I. -I/ucrt64/include'" : '-I.', # e.g., '-I. -I/usr/include/other'
	# Un-comment this if you add C files to link with later:
    # 'OBJECT'		=> '$(O_FILES)', # link all the C files too
);
