#!/usr/bin/env bash

# Setup some variables.

## source directories (relative paths)
scriptdir="$(dirname "$0")"
buildsystem="$scriptdir/buildsystem"
sty="$scriptdir/sty"

## files to be created
latexmkrc_target="latexmkrc"
buildscripts_target="buildscripts.pl"
distdocs_target="distdocs.sty"
src2exam_target="src2exam.sty"
src2listings_target="src2listings.sty"

## relative paths to linked/copied files
latexmkrc_source="$buildsystem/$latexmkrc_target"
buildscripts_source="$buildsystem/$buildscripts_target"
distdocs_source="$sty/$distdocs_target"
src2exam_source="$sty/$src2exam_target"
src2listings_source="$sty/$src2listings_target"

echo "Setting up project ..."

# If the respective files/links don't exist yet, copy/link them and print a message.
# Otherwise, print a message that they already exist.
if [ ! -e $latexmkrc_target ]; then
    echo "  Copying $latexmkrc_source"
    cp -L $latexmkrc_source .
else
    echo "  $latexmkrc_target already exists."
fi
if [ ! -e $buildscripts_target ]; then
    echo "  Linking $buildscripts_source"
    ln -s $buildscripts_source
else
    echo "  $buildscripts_target already exists."
fi
if [ ! -e $distdocs_target ]; then
    echo "  Linking $distdocs_source"
    ln -s $distdocs_source
else
    echo "  $distdocs_target already exists."
fi
if [ ! -e $src2exam_target ]; then
    echo "  Linking $src2exam_source"
    ln -s $src2exam_source
else
    echo "  $src2exam_target already exists."
fi
if [ ! -e $src2listings_target ]; then
    echo "  Linking $src2listings_source"
    ln -s $src2listings_source
else
    echo "  $src2listings_target already exists."
fi
