#!/bin/sh

cp -r output/node_modules nodejsCode
apk update && apk upgrade && apk add py-pip && apk add docker && pip install docker-compose
docker-compose -f ../../docker-compose.test.yaml && cd nodejsCode && npm run integration-test