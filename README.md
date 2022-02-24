# IaC sandbox

## Description

This Vagrantfile creates a virtual machine running on CentOS 7 that includes a bench of pre-installed Infrastructure-as-Code (IaC) tools.

It is ideal if you want to explore the AWS platform, Terraform and Ansible on your local machine for free!

### Pre-installed apps

The virtual machine comes with a list of pre-installed applications.

| Name | Description |
|---|---|
| Python 3 | High-level scripting language interpretor |
| Docker Engine | Persistent process that manages containers and handles container objects |
| Jenkins | Automation tool with plugins built for Continuous Integration purposes |
| LocalStack | Cloud service emulator that mocks AWS public cloud services |
| AWS CLI | Command-line interface tool to control AWS public cloud services |
| Ansible | Infrastructure as code tool that automates cloud provisioning, configuration management, application deployment, and more... |
| Hashicorp Terraform | Infrastructure as code tool that defines both cloud and on-premise resources |
| Hashicorp Packer | Tool that enables you to create identical machine images for multiple platforms from a single source template |
| Hashicorp Vault | Identity-based secrets and encryption management system |
| Terragrunt | thin wrapper that provides extra tools for keeping your configurations DRY, working with multiple Terraform modules, and managing remote state |

## Usage

- [Spin up the VM with Vagrant](#spin-up-the-vm-with-vagrant)
- [Start LocalStack](#start-localstack)
- [Install Vim plugins](#install-vim-plugins)

### Spin up the VM with Vagrant

_Before starting, note that this `Vagrantfile` uses Microsoft Hyper-V as provider (hypervisor). If you use another provider, you will first have to edit it._

To deploy and provision the VM, open a PowerShell console as Administrator and run:

```sh
vagrant up --provider=hyperv
```

#### Get the IP address of the VM

To get the current virtual machine's IP addresses, open a PowerShell console as Administrator and run:

``` sh
(Get-VM -Name "iac-sandbox").NetworkAdapters.IPAddresses
```

_If you have changed the `PROJECT_NAME` variable in the Vagrantfile, you will need to change the value for the `-Name` parameter._

#### Connect to the VM

You can access the VM via SSH.

The easiest way to connect is to use the Vagrant built-in SSH client. To connect as `vagrant` user, simply run:

```sh
vagrant ssh
```

If you prefer to use your own SSH client, you can connect to the VM using its IP address and these credentials:

- username: `vagrant`
- password: `vagrant`

### Start LocalStack

To start LocalStack, connect to the VM as `vagrant` user and run:

_Ensure that you execute this command as `vagrant` user, not as root!_

```sh
localstack start --docker --detached
```

### Access Jenkins

Jenkins service is started at VM provisioning.

You can access the Jenkins WebUI from your host: `http://<vm_ip_address>:8080/`

_See [Get the IP address of the VM](#get-the-ip-address-of-the-vm) if needed._

### Install Vim plugins

A `.vimrc` file is automatically provided for the `vagrant` user.

It contains defined plugins that aim to improve your working experience.

To install the plugins, connect to the VM as `vagrant` user and run:

```sh
vim +PluginInstall +qall
```
