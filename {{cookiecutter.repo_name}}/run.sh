#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo ${SCRIPT_DIR}
cd ${SCRIPT_DIR}

sudo docker run --rm -v ${SCRIPT_DIR}:/repo {{ cookiecutter.image_name }} bash docker/container_script.sh
