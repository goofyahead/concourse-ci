#!/bin/sh

cp -r output/node_modules nodejsCode
source /docker-lib.sh
start_docker
docker-compose -f ../../docker-compose.test.yaml up && cd nodejsCode && npm run integration-test
docker-compose -f code/example/integration.yml down