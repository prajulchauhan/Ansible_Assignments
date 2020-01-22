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
function install(){
	sudo pip install ansible
}
checkAnsible
