#!/bin/sh
#
# install Docker Engine.
#
# related documentation(s):
# - Install Docker Engine on CentOS <https://docs.docker.com/engine/install/centos/>

# add Yum repository
yum-config-manager --add-repo "https://download.docker.com/linux/centos/docker-ce.repo"

# install packages
yum install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io

# start and enable service
systemctl enable --now docker

# add vagrant user to docker group
sudo usermod -aG docker vagrant
