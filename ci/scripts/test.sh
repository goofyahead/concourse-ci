#!/bin/sh

set -e -u -x

mv node_modules nodejsCode/node_modules
cd nodejsCode && npm test