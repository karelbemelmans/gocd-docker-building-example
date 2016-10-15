#!/bin/bash -xe
#
# Example script to be used on a Go agent that build using Docker:
#
# - build our customer Docker container that will do all the work
# - start this container wit the local work directory mounted

# This needs to be something totally random
# Can we use a GO env variable for this?
RANDOM_CONTAINERNAME=$GO_REVISION

# 1. Create image
docker build -t $RANDOM_CONTAINERNAME .

# 2. Run container
docker run --rm \
  -v $(pwd)/src:/src \
  -v $(pwd)/output:/output \
  $RANDOM_CONTAINERNAME
