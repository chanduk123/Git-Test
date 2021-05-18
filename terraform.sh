#!/bin/bash
#this code is used to install terraform auto using script
read -p "Enter the Terraform major version " major
read -p "Enter the Terraform minor version " minor

if [ $major -lt 14 ]; then
    echo "please give version more than 14"
else
    VERSION=${major}.${minor}
    echo "Downloding terraform version  $VERSION"
    rm -rf terraform
    wget https://releases.hashicorp.com/terraform/0.${VERSION}/terraform_0.${VERSION}_linux_amd64.zip
    unzip terraform_0.${VERSION}_linux_amd64.zip
    rm -rf unzip terraform_0.${VERSION}_linux_amd64.zip
    chmod 755 terraform
    ./terraform version
fi

#!/bin/bash
read -p "Enter the Terraform major version " major
read -p "Enter the Terraform minor version " minor

if [ [ $major -gt 5 -a $major -le 10 ] ]; then
    echo "version 1 will be installed"
elif [ [ $major -gt 10 -a $major -le 15 ] ]; then
    echo "version 2 will be installed"
elif [ $major -gt 15 ]; then
    echo "version 3will be installd"
else
    "OOPS pls select within the range"
fi
