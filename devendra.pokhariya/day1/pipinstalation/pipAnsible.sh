#!/bin/bash
function pipInstallAnsible() {      
                
                installPip
                sudo pip install ansible
                if [ $?="0" ];
                    then 
                        sudo cp ansible.cfg /etc/ansible/
                        sudo cp hosts /etc/ansible
                   else
                        echo "Copying failed May be permission Error !!"
                    fi

}

function installPip(){
    checkPython
    if [ $?=='0' ];then
        if command -V pip &>/dev/null; then
                    pip -V
        else
                    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
                    if [ $?!='0' ];then

                                sudo python get-pip.py -y
                    else
                                echo "Pip INstalltion Failed"

                     fi
        fi
    else 
        echo "Python Installation Failed !!"
    fi

}

function checkPython() {
    if command -v python &>/dev/null; then
        
               echo "pyhton installed"      
    else
         wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tar.xz
        tar xJf Python-3.6.3.tar.xz
        cd Python-3.6.3
        ./configure
        make
        make install

    
    fi
        return 0
    }
    pipInstallAnsible