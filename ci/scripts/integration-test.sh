#!/bin/sh

cp -r output/node_modules nodejsCode
docker-compose -f ../../docker-compose.test.yaml && cd nodejsCode && npm run integration-test