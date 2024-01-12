#! /bin/bash

docker exec pgdb_container psql -d POSTGRES_DB=$POSTGRES_DB -U POSTGRES_USER=$POSTGRES_USER \
-c "CREATE DATABASE books_store;"