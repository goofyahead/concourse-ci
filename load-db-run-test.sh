#!/bin/sh

cmd="npm run integration-test"

>&2 echo "config host: $VAR_DB_HOST port: $VAR_DB_PORT user: $VAR_DB_USER"

# wait for the postgres docker to be running
while ! pg_isready -h $VAR_DB_HOST -p $VAR_DB_PORT -q -U $VAR_DB_USER ; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"

# run the command
exec $cmd