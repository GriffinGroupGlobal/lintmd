#!/usr/bin/env sh

set -e

wd=`pwd`

#cd /home/node
cd /Users/mattjenks/Development/utilities/lintmd

if [ -d $wd/src ]; then
   npm run lint -- -V
   npm run lint -- $wd/*.md
   npm run lint -- $wd/**/*.md
fi


