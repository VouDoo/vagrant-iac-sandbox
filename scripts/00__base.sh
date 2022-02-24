#!/bin/sh
#
# initialize the CentOS box.

# update all packages
yum update -y

# install packages
yum install -y \
    yum-utils \
    curl \
    unzip \
    vim \
    git \
    bash-completion \
    bash-completion-extras \
    java-11-openjdk

# enable password authentication for SSH connections
sed -i 's/#PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd
