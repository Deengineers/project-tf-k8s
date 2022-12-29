#!/bin/bash

echo "start tf installation"
sudo apt update
sudo apt-get install unzip
wget https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_linux_amd64.zip
unzip terraform_1.1.5_linux_amd64.zip
sudo mv terraform /usr/local/bin
rm -rf terraform_1.1.5_linux_amd64.zip
terraform -v
