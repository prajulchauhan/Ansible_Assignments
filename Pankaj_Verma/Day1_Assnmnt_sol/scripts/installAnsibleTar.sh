#!/bin/bash
function checkAnsible(){
 ansible --version
    if [ "$?" -eq "0" ]
    then
 	echo "Ansible already installed"      
 	exit 0
    else
        installAnsible
    fi

}
function installAnsible(){
		checkpip
		install
}
function installpip(){
		curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
		sudo python get-pip.py 
	}
function checkpip(){
	pip -V
	 if [ "$?" -eq "0" ]
	 then
         	continue
   	 else
        	installpip	
    	fi

}
function getSource(){
		git clone https://github.com/ansible/ansible.git

}
function install(){
	getSource
	cd ./ansible
	source ./hacking/env-setup -q
	pip install --user -r ./requirements.txt
	git submodule update --init --recursive
	echo "127.0.0.1" > ~/ansible_hosts
    export ANSIBLE_INVENTORY=~/ansible_hosts
		}
checkAnsible

