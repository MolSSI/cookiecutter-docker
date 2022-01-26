#!/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo ${SCRIPT_DIR}
cd ${SCRIPT_DIR}

# Build a development image for this code
docker build -t molssi/bootcamp .

# Compile the code using the Docker image
docker run --rm -v ${SCRIPT_DIR}:/repo molssi/bootcamp bash -c "bash docker/build_code.sh"
