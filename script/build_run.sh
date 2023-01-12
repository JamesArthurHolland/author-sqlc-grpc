#!/bin/bash

echo "sqlc generate"
sqlc generate

echo "sqlc-grpc"
sqlc-grpc -m "my/module/path"

echo "go run"
go run . -db postgresql://postgres:pass1234@localhost:5432/authors -dev -grpcui