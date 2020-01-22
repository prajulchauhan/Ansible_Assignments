#!/bin/bash

function Main() {

	var=$(which ansible)

if [ $? -eq 0 ];then
   
       	echo "ansible is already installed"
else
    	CheckOS
fi
}

function InstallOS(){

      
       sudo yum install epel-release
       sudo yum install -y ansible
       }

function InstallUbuntu(){
     sudo apt-get install -y ansible
  }

function CheckOS(){
OS=$(uname -a | grep Ubuntu)
if [ "$?" == "0" ];
 then
   InstallUbuntu
else
  InstallOS
fi
}
Main
