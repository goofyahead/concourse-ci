#!/bin/sh

set -e -u -x

cd nodejsCode && npm install
ls
mv node_modules output/node_modules