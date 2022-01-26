#!/bin/sh

#
#--------------------------------------------------------#
# Obtain all dependencies through apt-get
#--------------------------------------------------------#
#
apt-get update -y
apt-get install -y --no-install-recommends \
    gcc \
    g++ \
    gfortran \
    libmpich-dev \
    make \
    cmake \
    git \
    python3-dev \
    python3-pip
apt-get clean
apt-get purge
rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*
