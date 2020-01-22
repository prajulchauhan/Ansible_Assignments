Basic tasks


Use ansible modules to create a user along with

![image](images/1.png)

Home directory as /tmp/username

![image](images/2.png)

Provide shell /bin/bash

![image](images/3.png)

Create a group for user

![image](images/4.png)

Associate that user with newly created group

![image](images/5.png)

Use ansible modules to fetch system info like

Hostname

![image](images/6.png)

IP addresses (public, private)

![image](images/7.png)

Operating System

![image](images/8.png)

RAM information (total, used, free)

![image](images/9.png)

Disk information (total,used, free)

![image](images/10.png)

Available Network Devices.

![image](images/11.png)

Use ansible modules to install nginx along with below steps.

Start nginx service

![image](images/12.png)

Stop nginx service

![image](images/13.png)

Along with hosting a custom HTML Page on it displaying your Name. /var/www/html/index.nginx-debian.html

![image](images/14.png)

![image](images/141.png)

Restart nginx service

![image](images/15.png)




Note: For this assignment create a user ninja having sudo privileges on your machine.
Make sure that all below listed operations should be done via ansible adhoc command using ninja user


Must Do

Install python3 on your machine.

![image](images/16.png)

Print operating system of your machine.

![image](images/17.png)

Install nginx.

![image](images/18.png)

Host https://github.com/cloudacademy/static-website-example via nginx.

![image](images/19.png)

Host above website as opstree.com, make sure the logs should be stored as /var/log/nginx/opstree.com.access.log and /var/log/nginx/opstree.com.error.log

![image](images/20.png)

Host abvoe website as techprimosoultions.com, make sure the logs should be stored as /var/log/nginx/techprimosoultions.com.log and /var/log/nginx/techprimosoultions.com.error.log

![image](images/21.png)

Make sure that the hosted website is accessible only from localhost

![image](images/22.png)

![image](images/221.png)

Create a utility that will run every morning at 9:30 am that will clean up the nginx logs.

![image](images/23.png)

Good to do

Uninstall python from your machine

![image](images/24.png)

Install python3 on your machine.

![image](images/25.png)

Uninstall nginx

![image](images/26.png)

Install nginx using nginx binary or source code. Follow Linux best practices


Summary
In this section we have gone through some of the important ansible modules

raw
apt, yum, package
git
shell, command
service
user
group
file, copy
template
lineinfile
unarchive
iptables
script
stat
setup