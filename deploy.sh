#!/bin/bash -xe
#
# Example script to be used on a Go agent that build using Docker:
#
# - create a Docker image to be used for production running
# - copy the artifacts from the build into this container
# - push it to a registry
#
# AWS_ECR_LOCATION needs to exist an an env variable

# This will be the name of the resulting Docker image
# This values could come from the GoCD environment
IMAGE=unibet/example-image
TAG=latest

# 1. Build the production container.
docker build -t $IMAGE:$TAG -f Dockerfile-deploy .

# 2. Push it to a registry
# Generate ECR login token
$(aws ecr get-login)

# Tag and push to ECR
docker tag $IMAGE:$TAG $AWS_ECR_LOCATION/$IMAGE:$TAG
docker push $AWS_ECR_LOCATION/$IMAGE:$TAG
