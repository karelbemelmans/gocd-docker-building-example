#!/bin/bash -xe
#
# This script contains the actual build process for your plan.

# Clean the output directory
rm -rf /output/*

whereis mvn

echo "Build finished!" >> /output/output.txt
