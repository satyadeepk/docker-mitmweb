#!/bin/bash

# WHILE HOOKS ARE NOT FIXED

VERSION=$(cat VERSION)
DOCKER_REPO="fopina/mitmweb"

echo "Building for arm32v6..."
docker build -t $DOCKER_REPO:$VERSION-arm --build-arg BASEIMG=arm32v6/python:3.6.4-alpine3.7 -f Dockerfile .
docker tag $DOCKER_REPO:$VERSION-arm $DOCKER_REPO:arm
docker push $DOCKER_REPO:arm
docker push $DOCKER_REPO:$VERSION-arm
