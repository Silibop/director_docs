#!/bin/bash

# This assumes your program is named index.js
find . -name . -o -prune -exec rm -rf -- {} +
git clone https://github.com/Silibop/director_docs ./
npm install
exec bin/www