#!/bin/sh
#
# install Python 3 and auxiliary tools.

# install packages
yum install -y \
    gcc \
    python3 \
    python3-devel \
    python3-pip

# upgrade Pip
pip3 install -U pip
