#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
TAG=1.82

docker buildx build --push \
  --platform linux/amd64,linux/arm64/v8 \
  --tag coolstory/alpine-boost:$TAG \
  "$SCRIPT_DIR"
