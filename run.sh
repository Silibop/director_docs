#!/bin/bash

find . -name . -o -prune -exec rm -rf -- {} +
git clone https://github.com/Silibop/director_docs ./
npm install
exec bin/www