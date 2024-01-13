#! /bin/bash


echo $POSTGRES_DB
echo ${{ secrets.POSTGRES_DB }}

# docker exec pgdb_container psql -d $POSTGRES_DB -U $POSTGRES_USER -c 'CREATE DATABASE books_store;'
