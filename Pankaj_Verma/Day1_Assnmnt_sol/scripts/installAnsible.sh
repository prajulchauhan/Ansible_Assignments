#!/bin/bash
function checkinstall(){
    ansible --version
	 if [ "$?" -eq "0" ]
    then
	 echo "Ansible is already installed at your machine"
         exit 0
    else
        checkOS
    fi

}
function checkOS(){
DISTRO=sudo cat /etc/os-release | grep -i  "^ID=" 
if [ -n "(echo $DISTRO | grep ubuntu)" ]
then
     installUbuntu   
elif [ -n "(echo $DISTRO | grep centos)" ]
then
       installCentos
else
        echo "Distribution not supported"
	
fi
}
function installUbuntu(){
	sudo apt update -y
	sudo apt install -y software-properties-common
	sudo apt-add-repository --yes --update ppa:ansible/ansible
	sudo apt install -y ansible
}
function installCentos(){
	sudo yum update -y
	sudo yum install -y ansible
}
checkinstall
