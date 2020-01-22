#Assignment Solution by Prajul Chauhan

* Install ansible on below OS using package manager, commit the solution as shell script
    * Ubuntu 16.04 & 18.04
    * Centos 6.x & 7.x





```
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



	function InstallUbuntu()


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





* Install ansible using pip, commit the solution as shell script.
### Good to Do
* Install ansible using tarball of tagged release, commit the solution as shell script.
* Install ansible using the source code, commit the solution as shell script.
