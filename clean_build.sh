#!/bin/bash


# Work from this script's dir.
cd "`dirname "$0"`"
path_scriptdir="`pwd -P`"

# All errors are fatal.
set -e

# Prepare the build directory.
dir_build="${1:-build}"
rm -rf "$path_scriptdir"'/'"$dir_build"
mkdir -p "$dir_build"

# Fresh build.
cd "$dir_build"
cmake ..
make
