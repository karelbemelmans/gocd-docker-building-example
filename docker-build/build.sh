#!/bin/bash -xe
#
# This script contains the actual build process for your plan.

cat /src/input.txt | sed -e 's/o/O/g' > /output/output.txt
