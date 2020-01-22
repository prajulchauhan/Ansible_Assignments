# Learning by Doing | Modules

## Introduction
In this section we will explore various ansible modules and understand how we can self learn a module

## References
* https://docs.ansible.com/ansible/latest/modules/modules_by_category.html

## Assignments
For this assignment we will use the setup created in our previous assignment

### Basic tasks

* Use ansible modules to create a user along with
	* Home directory as /tmp/username

    ![image](images/webdev.png)

	* Provide shell /bin/bash

    ![image](images/bash.png)

	* Create a group for user && Associate that user with newly created group
    
    ![image](images/group.png)
    
  

* Use ansible modules to fetch system info like
	* Hostname

	```ansible all -i inventory.yml -m setup -a"filter=*hostname*"```
	
	![image](images/hostname.png)
	
	* IP addresses (public, private) 

	![image](images/ipv4.png)

	* Operating System
	![image](images/distro.png)

	* RAM information (total, used, free)

	![image](images/memory.png)

	* Disk information (total,used, free)

	![image](images/disk.png)

	* Available Network Devices.
	![image](images/interface.png)

* Use ansible modules to install nginx along with below steps.
	* Start nginx service 

	![image](images/nstart.png)

	* Stop nginx service
	![image](images/stngi.png)

	* Along with hosting a custom HTML Page on it displaying your Name. `/var/www/html/index.nginx-debian.html`

	```ansible all -i inventory.yml -m template -a "src=site.conf dest=/etc/nginx/sites-available/site.conf" -m template -a"src=index.nginx-debian.html dest=/var/www/html/index.nginx-debian.html" -m file -a "src=/etc/nginx/sites-available/site.conf dest=/etc/nginx/sites-enabled/site.conf state=link" -m service -a "name=nginx state=restarted" -become=yes```

	![image](images/one.png)
	![image](images/two.png)
	![image](images/three.png)
	![image](images/four.png)
	
	* Restart nginx service

	![image](images/five.png)

> Note: For this assignment create a user ninja having sudo privileges on your machine. 
> Make sure that all below listed operations should be done via **ansible adhoc command** using *ninja* user


### Must Do 

* Install *python3* on your machine.

![image](images/python3.png)

* Print operating system of your machine.
![image](iamges/diistro.png)

* Install *nginx*.
![iamge](images/ngnic.png)

* Host *https://github.com/cloudacademy/static-website-example* via *nginx*.

![image](images/tempgit.png)
![image](images/linking.png)
![image](images/restarted.png)
* Host above website as *opstree.com*, make sure the logs should be stored as */var/log/nginx/opstree.com.access.log* and */var/log/nginx/opstree.com.error.log*

![image](images/opstreedd.png)


* Host abvoe website as *techprimosoultions.com*, make sure the logs should be stored as */var/log/nginx/techprimosoultions.com.log* and */var/log/nginx/techprimosoultions.com.error.log*

* Make sure that the hosted website is accessible only from *localhost*

* Create a utility that will run every morning at 9:30 am that will clean up the nginx logs.



## Good to do
* Uninstall python from your machine

* Install *python3* on your machine.

* Uninstall nginx

* Install nginx using nginx binary or source code. Follow Linux best practices


## Summary
In this section we have gone through some of the important ansible modules

* raw
* apt, yum, package
* git
* shell, command
* service
* user
* group
* file, copy
* template
* lineinfile
* unarchive
* iptables
* script
* stat
* setup