#!/bin/sh
#
# install Hashicorp product suite.
#
# related documentations:
# - Install Packer <https://learn.hashicorp.com/tutorials/packer/get-started-install-cli>
# - Install Terraform <https://learn.hashicorp.com/tutorials/terraform/install-cli>
# - Install Vault <https://learn.hashicorp.com/tutorials/vault/getting-started-install>

# add Yum repository
yum-config-manager --add-repo "https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo"

# install packages
yum install -y \
    packer \
    terraform \
    vault
