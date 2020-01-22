# Assignment Solution by Prajul Chauhan

## Must Do
- Create a playbook that will:
  - Install apache
  - Create a apache home page with your name and System Information.
  - Reload apache
- Update above playbook to reload apache only when content of home page get's updated.
- Update above playbook to install git, vim, ntp...  
- Update above playbook to create a user passed as parameter.
- Update above playbook to add ninja & sensei user to opstree group else to devops group.
- Update above playbook to prompt for user details to be created
- Update above playbook create all the users attending current training.
- Update your playbook to externalise your tasks.






	```
	---
	- hosts: webserver1

	  become: true

	  vars_prompt:
  
	  - name: user

	    prompt: "Enter user name"

	    private: no
  
	  - name: shell

	    prompt: "Enter shell"

	    private: no
    
	  tasks:

	  - name: installing apache

	    apt: name=apache2 state=latest

	  - name: custom_homepage

	    template:

	       src: index.html

	       dest: /var/www/html/index.html

	  - name: install packages

	    apt:

	        name: "{{ item }}"

	        state: present

	    with_items:

	          - vim

	          - ntp

	          - git

	  - name: adding_user

	    user:

	         name: "{{ user }}"

	         shell: "{{ shell }}"

	  - name: adding user

	    user:

	       name: "{{ item }}"

	       state: present

	    with_items:

	       - ninja

	       - sensei

	       - pankaj

	       - dev

	       - saumya

	       - raushan

	  - name: adding groups

	    group:

        name: "{{ item }}"

        state: present

	    with_items:

	       - opstree

	       - devops

	  - name: adding_user_into_groups

	    user:

	         name: ninja

	         group: opstree

	    notify:

	         -  restart_apache

	  handlers:

	     - name: restart_apache

	       service:

	           name: apache2

	           state: restarted




### Good To Do
- Create an ansible playbook on below condition.
    - The playbook should have two tasks, one is for adding user `tom` and the second task is to add group `cat`
    - Then try to run the complete playbook but it should execute the task for `tom` user creation.




	---

	- hosts: webserver1

	  become: true

	  tasks:

	    - name: creating_user

	      user:

	          name: tom

	      tags: user


	    - name: creating_group

	      group:

	           name: cat

	      tags: group





- Create a task to install **cron** package only if I pass a variable `install=yep`.




		---

	- hosts: webserver1

	  become: true

	  vars_prompt:


	    - name: install

	      prompt: "Do you want to install cron. yep/nope"

	      private: no


	  tasks:


	    - name: creating_user

	      user:

	          name: tom

	      tags: user


	    - name: creating_group

	      group:

	           name: cat

	      tags: group


	    - name: installing_cron

	      apt:

	          name: cron

	          state: present

	      when: install == 'yep'

	      tags: cron
      


- Create a task in which it will create a file in /tmp on below condition.
    - Let's assume **region** is a variable. So if the region value is east the file should contain central and if the region value is central then it should contain eastern.
- Create a playbook which will include user creation playbook.
