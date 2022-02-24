#!/bin/bash

# Remap bottom left key to Japanese RO key (keycode 97, but for some reason we need to subtract 8)
#   and NUMLOCK key to Japanese long dash
#if [[ $EUID -ne 0 ]]; then
#    pkexec setkeycodes 56 89 45 124 
#else
#    setkeycodes 56 89 45 124
#fi

numlockx on # Ensuring numlock is enabled, since we no longer can use the key

xmodmap /home/tobi/.Xmodmap
source /home/tobi/.xinputrc
