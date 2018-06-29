#!/usr/bin/env sh

set -e

wd=`pwd`

cd /home/node

if [ -d $wd/src ]; then
   npm run lint -- -V
   npm run lint -- $wd/*.md
   npm run lint -- $wd/**/*.md
fi


