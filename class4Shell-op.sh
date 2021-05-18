#!/bin/bash
read -p "Enter The Terraform MAJOR Version:" MAJOR
read -p "Enter The Terraform MINOR Version:" MINOR
if [ $MAJOR == 14 ]; then
    echo "Lets Download Version 14"
elif [ $MAJOR == 15 ]; then
    echo "Lets Download Version 15"
elif [ $MAJOR -lt 14 ]; then
    echo "Anything Below 14 is not valid"
else
    echo "INVALID INPUT"
fi
--------------------------------------------------------------------------------------
#!/bin/bash
read -p "Enter The Terraform MAJOR Version:" MAJOR
read -p "Enter The Terraform MINOR Version:" MINOR
if [ $MAJOR -ge 14 -or $MAJOR -le 15 ]; then
    echo "Lets Download Version $MAJOR"
else
    echo "INVALID"
fi
--------------------------------------------------------------------------------------
#!/bin/bash
read -p "Enter The Terraform MAJOR Version:" MAJOR
read -p "Enter The Terraform MINOR Version:" MINOR
if [ $MAJOR -lt 14 ]; then
    echo "Please Select Either of 14 or 15 version"
else
    VERSION=${MAJOR}.${MINOR}
    echo "Downloading Terarform Version 0.$VERSION"
    rm -f terraform
    wget https://releases.hashicorp.com/terraform/0.${VERSION}/terraform_0.${VERSION}_linux_amd64.zip
    unzip terraform_0.${VERSION}_linux_amd64.zip
    rm -f terraform_0.${VERSION}_linux_amd64.zip
    chmod 777 terraform
    ./terraform version
fi

-------------------------------------------------
#!/bin/bash
read -p "Enter The Username:" USERNAME
if [ -z "$USERNAME" ]; then
    echo "You have entered an Empty String. Plz enter Valid Input...."
else
    EXISUSER=$(cat /etc/passwd | grep -w $USERNAME | cut -d ":" -f 1)
    if [ "$USERNAME" = "$EXISUSER" ]; then
        echo "$USERNAME Exists"
    else
        echo "Lets Create  A Newuser $USERNAME"
    fi
fi
-------------------------------------------------
#!/bin/bash
read -p "Enter The Username:" USERNAME
if [ -n "$USERNAME" ]; then
EXISUSER=$(cat /etc/passwd | grep -w $USERNAME | cut -d ":" -f 1)
    if [ "$USERNAME" = "$EXISUSER" ]; then
        echo "$USERNAME Exists"
    else
        echo "Lets Create  A Newuser $USERNAME"
    fi
else
echo "You have entered an Empty String. Plz enter Valid Input...."
fi
