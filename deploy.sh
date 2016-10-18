#!/bin/bash -xe
#
# Example script to be used on a Go agent that build using Docker:
#
# - create a Docker image to be used for production running
# - copy the artifacts from the build into this container
# - push it to a registry

# This will be the name of the resulting Docker image
# This values could come from the GoCD environment
IMAGE=unibet/test-deployment-container
TAG=latest

# 1. Build the production container.
docker build -t $IMAGE:$TAG -f Dockerfile-deploy .

# 2. Push it to a registry
# TODO
