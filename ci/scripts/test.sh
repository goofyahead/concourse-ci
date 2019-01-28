#!/bin/sh

set -e -u -x

mv output/node_modules nodejsCode/node_modules
cd nodejsCode && npm test