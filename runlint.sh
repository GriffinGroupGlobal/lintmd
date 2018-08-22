#!/usr/bin/env sh

set -e

wd=`pwd`

cd /home/node

npm run lint -- -i $wd/node_modules -i $wd/Pods -i $wd/test/libs $wd/*.md
npm run lint -- -i $wd/node_modules -i $wd/Pods -i $wd/test/libs $wd/**/*.md


