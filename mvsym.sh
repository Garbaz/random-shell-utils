#!/bin/bash

help() {
   echo 'Usage: mvsym.sh SYMLINK... DESTINATION'
   echo '       mvsym.sh --help'
   echo ''
   echo '  Move symbolic link[s] to a different location (DESTIONATION)'
   echo '  while keeping relative paths correct.'
   exit 1
}

set -e # exit on error

dest="${@: -1}" # The last argument is the destination

# Display help 
[ "$1" == "--help" ] && help

while [ $# -gt 1 ];do # Loop over all arguments except the last, which is the destination
    [ ! -L "$1" ] && help
    orig_link="$1"
    orig_name=$( basename    "$orig_link" )
    orig_dest=$( readlink -f "$orig_link" )
    ln -r -s "$orig_dest" "$dest/$orig_name"
    rm "$orig_link"

    shift
done
