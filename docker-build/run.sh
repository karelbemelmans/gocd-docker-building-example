#!/bin/bash -xe
#
# This script contains the actual build process for your plan.

# Clean the output directory
rm -rf /output/*

# Generate a file in the output directory
echo "This is a successful build!" >> /output/output.txt
