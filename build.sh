#!/bin/bash -xe
#
# Example script to be used on a Go agent that build using Docker:
#
# - build our customer Docker container that will do all the work
# - start this container wit the local work directory mounted

# This needs to be something totally random
RANDOM_CONTAINER_NAME=${GO_REVISION:-namespace/tmpcontainer}
SCRIPTS_CONTAINER=$AWS_ECR_LOCATION/unibet/pipeline-go-scripts:latest

# 1. Create image
docker build -t $RANDOM_CONTAINER_NAME -f Dockerfile-build .

# 2. Create a container for the scripts image
docker run -v /opt --name pipeline-go-scripts-container $SCRIPTS_CONTAINER echo 'Data-only container for pipeline-go-scripts'

# 2. Run container, link it with the scripts container
docker run --rm \
  -v $(pwd)/src:/src \
  -v $(pwd)/output:/output \
  -volumes-from pipeline-go-scripts-container \
  $RANDOM_CONTAINER_NAME
