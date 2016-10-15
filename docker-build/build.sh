#!/bin/bash -xe
#
# This script contains the actual build process for your plan.

cat /src/input.txt  > /output/output.txt
echo '-- GoAgent was here.' >> /output/output.txt

env > /output/env.txt
