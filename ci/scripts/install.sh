#!/bin/sh

set -e -u -x

cd nodejsCode && npm install
mkdir output
ls
cp node_modules output/node_modules