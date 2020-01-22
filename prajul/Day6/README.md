# Assignment Solution by Prajul Chauhan


## Must do 

* Write a playbook to create a user along with below steps.
	* Home directory as /home/username
	* Provide shell /bin/bash
	* Create a group and add user into that group.



	```
	---
	- hosts: webserver1

  	  become: yes

  	  remote_user: ubuntu

  	  tasks:

  	- name: create_user

    	  user:

      	  name: ninja3

      	  shell: /bin/bash

      	  home: /home/ninja3

  	- name: create_group

    	  group:

      	  name: testing

      	  state: present



* Write a playbook to fetch system info like
	* Hostname
	* IP addresses (public, private) 
	* Operating System
	* RAM information (total, used, free)
	* Disk information (total,used, free)
	* Available Network Devices.



	
	```
	---
	- name: gathering_system_info

	  hosts: webserver1

	  tasks:

	   - debug:

	     msg: "{{ item }}"

	     with_items:

	      - "{{ ansible_hostname }}"

	      - "{{ ansible_system }}"

	      - "{{ ansible_interfaces }}"

	      - "{{ ansible_mounts }}"

	      - "{{ansible_default_ipv4 }}"




* Write a playbook to install nginx along with below steps.
	* Start nginx service 
	* Stop nginx service
	* Along with hosting a custom HTML Page on it displaying your Name and system information which we are fetching above.
	* Restart nginx service





	```
	---
	- hosts: webserver1

	  become: true

	  tasks:

	  - name: installing_nginx

	    apt:

	      name: nginx

	      state: latest

	      update_cache: yes

	  - name: starting_nginx

	    service:

	      name: nginx

	      state: started

	  - name: stopping_nginx

	    service:

	      name: nginx

	      state: stopped

	  - name: nginx_default_page

	    lineinfile:

	      path: /var/www/html/index.nginx-debian.html

	      line: Hello! This is ninja Prajul

	      create: yes

	  - name: restarting_nginx

	    service:

	      name: nginx

	      state: restarted



## Good to do
* Write a playbook to install nginx only when `/var/www/html/index.nginx-debian.html` file doesn't exist.



	```
	---
	- hosts: webserver1

	  tasks:

	   - name: checking if file exists

	     stat:

	       path: /var/www/html/index.nginx-debian.html

	     register: stat_result

	   - name: installing_nginx

	     apt:

	       name: nginx

	       state: latest

	     when: stat_result.stat.exits == False




* Write a playbook to install multiple packages in a single play (using loops).




	```
	--- 
	- hosts: localhost

	  tasks:

	    - name: Install package

	      apt:

	       name: "{{ item }}"

 	       state: present

	      with_items:

	      - java*

	      - tomcat8



