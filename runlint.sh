#!/usr/bin/env sh

set -e

wd=`pwd`

cd /home/node

if [ -d $wd/src ]; then
   npm run lint -- $wd/src/*.md
   npm run lint -- $wd/src/**/*.md
fi

if [ -d $wd/test ]; then
   npm run lint -- $wd/test/*.md
   npm run lint -- $wd/test/**/*.md
fi

