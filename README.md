# gocd-docker-building-example

Example how to build on GoCD using Docker containers.

## 1. Building

### build.sh

This is the script invoked by GoCD. You probably don't need to change this.

### Dockerfile-build

The Dockerfile that creates your build environment. You want to replace the FROM line with your own image, the rest should be untouched.

### docker-build/run.sh

The actual stuff going on inside the container. This is where you write your test or build stuff using the tools you provided in the Docker image you put in the FROM part of the Dockerfile in this directory.


## 2. Deployment

### deploy.sh

Script invoked by GoCD to create a production deployable container.

### Dockerfile-deploy

The Dockerfile that creates your production environment. You will need to modify this to your needs.

