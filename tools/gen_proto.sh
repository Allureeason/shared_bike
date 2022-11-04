#!/bin/bash
protoc -I=./proto --cpp_out=./src/proto bike.proto
