# Learning by Doing | Ansible Introduction

## Introduction
In this section we will try to understand high level flow of Ansible using shell script

## References
Not Required

## Assignments
* Create a shell script to install nginx
* Update shell script to support below OS
    * Ubuntu 16.04 & 18.04
    * Centos 6.x & 7.x
* Update above shell script to implement idempotency for nginx installation
* Update above script to take package as an input so that you can install other packages as well
* Create another shell script that can execute above created shell script from a remote system to install nginx
* Update wrapper shell script to take shell script as a parameter to perform operation
* Create another shell script to create/update user
* Create another shell script to create/update group
* Modify above shell script to externalize the meta information of remote systems
    * IP of remote system
    * SSH User for remote system
    * SSH Private key for remote system
* Modify above shell script to perform operation on a group of servers in single go
* Modify above shell script so that parallel operations can be performed on the servers.
* Create a wrapper Jenkins pipeline over the shell script
* Create the architecture diagram of system that you have created
    