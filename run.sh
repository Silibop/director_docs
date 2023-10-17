#!/bin/bash
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>log.out 2>&1
find . -name . -o -prune -exec rm -rf -- {} +
git clone https://github.com/Silibop/director_docs ./
npm install
exec bin/www