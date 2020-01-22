#!/bin/bash

source osType.sh
PACKAGE='ansible'
function installAnsible(){
    getDistro
    case $DISTRO in
    ubuntu)
             sudo apt update
             sudo apt install software-properties-common
             sudo apt-add-repository --yes --update ppa:ansible/ansible
             sudo apt-get install $PACKAGE
            ;;
    centos)
             sudo yum install $PACKAGE
            ;;
        *)
            echo "You did not have required OS Type"
    esac
}
installAnsible