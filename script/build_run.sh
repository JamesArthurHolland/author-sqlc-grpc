#!/bin/bash

echo "sqlc generate"
sqlc generate

echo "sqlc-grpc"
sqlc-grpc -m "my/module/path"

echo "go run"
go run . -db [Database Connection URL] -dev -grpcui