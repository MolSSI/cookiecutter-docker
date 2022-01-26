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

#
#--------------------------------------------------------#
# Ensure that Python 3 is used by default
#--------------------------------------------------------#
#
cd /usr/local/bin
ln -s /usr/bin/python3 python
pip3 install --upgrade pip
rm pip && ln -s /usr/bin/pip3 pip
