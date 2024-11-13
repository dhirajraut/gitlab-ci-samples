#!/bin/bash

# Handlers for each stage.
compile() {
  echo "Compile Called."
}

build() {
  echo "Build Called."
}

test() {
  echo "Test Called."
}

release() {
  echo "Release Called."
}

deploy() {
  echo "Deploy Called."
}

export STAGE="$1"
export ENVIRONMENT="$2"

if [ "$STAGE" == "COMPILE" ]; then
  build
elif [ "$STAGE" == "BUILD" ]; then
  build
elif [ "$STAGE" == "INTEGRATION_TEST" ]; then
  test
elif [ "$STAGE" == "RELEASE" ]; then
  release
elif [ "$STAGE" == "DEPLOY" ]; then
  deploy
else
  echo "Invalid argument"
  exit 1
fi