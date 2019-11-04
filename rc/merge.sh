#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
VIMRC=$DIR/../vimrc

sed '/## auto-generated/q' $VIMRC > vimrc-new
awk 'FNR==1 {var=FILENAME; n=split(var,a,/\//); print "\n\" ## " a[n] " ##\n"}{print}' $DIR/*.vim >> vimrc-new
cat vimrc-new > $VIMRC
rm vimrc-new
