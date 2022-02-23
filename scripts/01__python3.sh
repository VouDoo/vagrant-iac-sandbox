#!/bin/sh
#
# install Python 3.

# install packages
yum install -y \
    gcc \
    python3 \
    python3-devel

# upgrade pip Python module
python3 -m pip install -U pip

# install and activate argcomplete Python module
python3 -m pip install argcomplete
/usr/local/bin/activate-global-python-argcomplete
