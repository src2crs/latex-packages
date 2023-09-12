# include build settings and scripts
do './buildscripts.pl';

############################################
# Override the default settings if needed. #
# (cf. buildscripts.pl)                    #
############################################
# $srcdir = "$rootdir/src";
# $examplesdir = "$rootdir/examples";
# $builddir = "$rootdir/build"; # where to put the pdf files created.
# $buildoptions = "-interaction=nonstopmode";

###################################
# Add files to the build process. #
###################################

add_examples(
    "test"
);
