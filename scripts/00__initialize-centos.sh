#!/bin/sh
#
# initialize the CentOS box.

# update all packages
yum update -y

# install base packages
yum install -y \
    yum-utils \
    unzip \
    vim \
    git

# enable password authentication for SSH connections
sed -i 's/#PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd
