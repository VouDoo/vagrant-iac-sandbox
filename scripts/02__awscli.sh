#!/bin/sh
#
# install and configure AWS CLI.
#
# related documenation(s):
# - AWS Command Line Interface (CLI) with LocalStack <https://docs.localstack.cloud/integrations/aws-cli/>

# install awscli Python module
python3 -m pip install --user awscli

# install awscli-local Python module (wrapper for LocalStack)
python3 -m pip install --user awscli-local

# set default AWS credentials (access for LocalStack)
mkdir -p ~/.aws
sudo tee ~/.aws/credentials <<EOF
[default]
aws_access_key_id=test
aws_secret_access_key=test
EOF
