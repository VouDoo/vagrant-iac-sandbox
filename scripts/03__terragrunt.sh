#!/bin/sh
#
# install Terragrunt.
#
# related documentation(s):
# - Install Terragrunt <https://terragrunt.gruntwork.io/docs/getting-started/install/>

VERSION=$(python3 -m lastversion gruntwork-io/terragrunt)

# download binary
curl -fsSL "https://github.com/gruntwork-io/terragrunt/releases/download/v${VERSION}/terragrunt_linux_amd64" \
    -o /usr/local/bin/terragrunt

# add execution permission to binary
chmod +x /usr/local/bin/terragrunt
