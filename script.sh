#! /bin/bash

docker exec pgdb_container bash -c 'psql -d $POSTGRES_DB -U $POSTGRES_USER \
-c "CREATE DATABASE books_store;"'
