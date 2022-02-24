#!/bin/sh
#
# install Jenkins.

# add Yum repository
yum-config-manager --add-repo https://pkg.jenkins.io/redhat/jenkins.repo

# import public key
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

# install package
yum install -y jenkins

# start and enable service
systemctl enable --now jenkins
