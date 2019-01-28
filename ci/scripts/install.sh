#!/bin/sh

set -e -u -x

cd nodejsCode && npm install
mv nodejsCode/node_modules output/node_modules