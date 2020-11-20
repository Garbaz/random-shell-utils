#!/bin/sh
bash -c "$(grep '^Exec' "$1" | tail -1 | sed 's/^Exec=//' | sed 's/%.//g')" &
#Removed: | sed 's/^"//g' | sed 's/" *$//g'
