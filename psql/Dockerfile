FROM postgres:12-alpine

ARG DIR="."

COPY $DIR/schema.sql /docker-entrypoint-initdb.d/
RUN chmod a+r /docker-entrypoint-initdb.d/*
