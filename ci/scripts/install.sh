#!/bin/sh

set -e -u -x

cd nodejsCode && npm install
mkdir output
ls
cp -r node_modules output/node_modules