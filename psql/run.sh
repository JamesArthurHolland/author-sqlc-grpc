#!/bin/bash

docker rm -f tstax_postgres || true

postgres_dir="$( dirname -- "$BASH_SOURCE"; )";
docker build -t tstax_postgres "$postgres_dir"

docker run --rm -e POSTGRES_PASSWORD=pass1234 -e POSTGRES_DB=authors --name tstax_postgres  -p 5432:5432 tstax_postgres
