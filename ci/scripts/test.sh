#!/bin/sh

set -e -u -x

mv install-dependencies/node_modules nodejsCode/node_modules
cd nodejsCode && npm test