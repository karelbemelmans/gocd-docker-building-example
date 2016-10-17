# gocd-docker-building-example

Example how to build on GoCD using Docker containers.

## run.sh

This is the script invoked by GoCD. You probably don't need to change this.

## Dockerfile

The Dockerfile that creates your build environment. You want to replace the FROM line with your own image, the rest should be untouched.

## docker-build/build.sh

The actual stuff going on inside the container. This is where you write your test or build stuff using the tools you provided in the Docker image you put in the FROM part of the Dockerfile in this directory.
