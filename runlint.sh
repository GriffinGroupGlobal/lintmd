#!/usr/bin/env sh

set -e

wd=`pwd`

cd /home/node

if [ -d $wd/src ]; then
   npm run lint -- -i $wd/node_modules $wd/*.md
   npm run lint -- -i $wd/node_modules $wd/**/*.md
fi


