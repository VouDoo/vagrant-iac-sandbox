#!/bin/sh
#
# install Python 3 and auxiliary tools.

# install packages
yum install -y \
    gcc \
    python3 \
    python3-devel

# upgrade Pip
python3 -m pip install -U pip
