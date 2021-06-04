#!/bin/sh
docker build -t yocto_builder -f Dockerfile_16-04 \
  --build-arg USER_ID=$(id -u) \
  --build-arg GROUP_ID=$(id -g) .
