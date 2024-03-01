# Don't run this script normally. Instead do:
# `source mkcd.sh`
# Otherwise the `cd` will do nothing.
mkdir "$1" || false
cd "$1" || false
