* Write a playbook to create a user along with below steps.

Home directory as /home/username

Provide shell /bin/bash

Create a group and add user into that group.

```
--- 
- hosts: localhost
  tasks: 
  - name: Create Group
    group: 
      name: ash
  - name: Create user 
    user: 
      name: ninja1
      shell: /bin/bash
      group: ash

```

Write a playbook to fetch system info like

Hostname

IP addresses (public, private)

Operating System

RAM information (total, used, free)

Disk information (total,used, free)

Available Network Devices.

```
---

- hosts: localhost
  tasks:
   - debug:
       msg: "{{ item }}"
     with_items:
      - "{{ ansible_hostname }}"     
      - "{{ ansible_system }}"
      - "{{ ansible_interfaces }}"
      - "{{ ansible_mounts }}"
      - "{{ ansible_default_ipv4 }}"

```


Write a playbook to install nginx along with below steps.

Start nginx service

Stop nginx service

Along with hosting a custom HTML Page on it displaying your Name and system information which we are fetching above.

Restart nginx service

```
---
- hosts: localhost
  tasks:
  - name: Install Nginx
    apt:
      name: nginx
      state: present
  - name: Start Nginx
    service:
      name: nginx
      state: started
  - name: Stop Service
    service:
      name: nginx
      state: stopped
  - name: Fetch files
    copy:
      dest: /var/www/html/index.html
      content: "{{ ansible_hostname }} {{ ansible_system }} {{ ansible_interfaces }} {{ ansible_mounts }} {{ ansible_default_ipv4 }}"
  - name: Service Restart
    service:
       name: nginx
       state: restarted

```

Good to do

Write a playbook to install nginx only when /var/www/html/index.nginx-debian.html file doesn't exist.

```
---
- hosts: localhost
  tasks:
  - name: Check file
    stat:
      path: /var/www/html/index.nginx-debian.html
    register: stat_result

  - name: Nginx install
    apt:
      name: nginx
      state: present
    when: stat_result.stat.exists == False
```

Write a playbook to install multiple packages in a single play (using loops).

```

--- 
- hosts: localhost
  tasks: 
    - name: Install package  
      apt: 
        name: "{{ item }}"
        state: present
      with_items:
      - nginx
      - apache2

```