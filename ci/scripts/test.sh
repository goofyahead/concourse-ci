#!/bin/sh

cp -r output/node_modules/ nodejsCode/node_modules/
cd nodejsCode && npm test