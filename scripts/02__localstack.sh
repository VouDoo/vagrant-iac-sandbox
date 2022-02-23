#!/bin/sh
#
# install LocalStack.
#
# related documenation(s):
# - Get LocalStack Up and Running <https://docs.localstack.cloud/get-started/>
# - AWS Command Line Interface (CLI) with LocalStack <https://docs.localstack.cloud/integrations/aws-cli/>

# install LocalStack Python module
python3 -m pip install --user localstack==0.14.0
