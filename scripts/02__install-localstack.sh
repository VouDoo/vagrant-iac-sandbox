#!/bin/sh
#
# install LocalStack and AWS CLI.
#
# related documenations:
# - Get LocalStack Up and Running <https://docs.localstack.cloud/get-started/>
# - AWS Command Line Interface (CLI) with LocalStack <https://docs.localstack.cloud/integrations/aws-cli/>

# install LocalStack Python module
python3 -m pip install --user localstack==0.14.0

# install awscli Python module
python3 -m pip install --user awscli

# install awscli-local Python module (wrapper for LocalStack)
python3 -m pip install --user awscli-local

# set AWS credentials for LocalStack
mkdir -p ~/.aws
sudo tee ~/.aws/credentials <<EOF
[default]
aws_access_key_id=test
aws_secret_access_key=test
EOF
