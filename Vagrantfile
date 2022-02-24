#!/usr/bin/ruby
# -*- mode: ruby -*-

# Vagrantfile
#
# DESCRIPTION
# ~~~~~~~~~~~
# Deploy a virtual machine with pre-installed IaC tools.
#
# NOTES
# ~~~~~
# This Vagrantfile uses Microsoft Hyper-V as provider.
# Make sure that Hyper-V feature has been enabled on your Windows machine.
#
# Use the following command to spin up the box:
#   vagrant up --provider=hyperv

PROJECT_NAME = "iac-sandbox"

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = PROJECT_NAME

  # configure provider (Hyper-V)
  config.vm.provider :hyperv do |provider|
    provider.vmname = PROJECT_NAME
    provider.cpus = 2
    provider.memory = 2048
  end

  # run provisioning scripts
  config.vm.provision "shell", path: "scripts/00__base.sh"
  config.vm.provision "shell", path: "scripts/01__python3.sh"
  config.vm.provision "shell", path: "scripts/01__docker_engine.sh"
  config.vm.provision "shell", path: "scripts/01__jenkins.sh"
  config.vm.provision "shell", path: "scripts/01__hashicorp.sh"
  config.vm.provision "shell", path: "scripts/01__vundlevim.sh", privileged: false
  config.vm.provision "shell", path: "scripts/02__ansible.sh"
  config.vm.provision "shell", path: "scripts/02__lastversion.sh"
  config.vm.provision "shell", path: "scripts/02__localstack.sh", privileged: false
  config.vm.provision "shell", path: "scripts/02__awscli.sh", privileged: false
  config.vm.provision "shell", path: "scripts/03__terragrunt.sh"
end
