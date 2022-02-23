#!/bin/sh
#
# install Hashicorp products: Packer, Terraform and Vault.
#
# related documentation(s):
# - Install Packer <https://learn.hashicorp.com/tutorials/packer/get-started-install-cli>
# - Install Terraform <https://learn.hashicorp.com/tutorials/terraform/install-cli>
# - Install Vault <https://learn.hashicorp.com/tutorials/vault/getting-started-install>
# - Autocompletion for Packer <https://www.packer.io/docs/commands#autocompletion>
# - Shell Tab-completion for Terraform <https://www.terraform.io/cli/commands#shell-tab-completion>
# - Autocompletion for Vault <https://www.vaultproject.io/docs/commands#autocompletion>

# add Yum repository
yum-config-manager --add-repo "https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo"

# install packages
yum install -y \
    packer \
    terraform \
    vault

# install autocomplete feature (do not work)
# packer -autocomplete-install
# terraform -install-autocomplete
# vault -autocomplete-install
