#!/usr/bin/env bash

set -e -u -x

mv dependency-cache/node_modules nodejsCode
cd nodejsCode && npm test