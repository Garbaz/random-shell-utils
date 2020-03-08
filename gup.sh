#!/bin/bash

if [ $# -ne 0 ];then
cmsg="$@"
else
printf "\nCommit message:\n>"
read cmsg
fi
printf "\n\e[94mCommiting with commit message: \e[1m\e[96m$cmsg\e[94m\e[39m\e[0m\n\n"
git commit -am "$cmsg"
printf "\n"
git push -u origin master
