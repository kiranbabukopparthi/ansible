# #!/bin/bash

# Disadvantages of shell scripting
# 1. No idempotency
# 2. No error handling
# 3. Little complex
# 4. Large scale servers handling is tough
# 5. Distribution specific, homogenous (script written for RHEL won't work for ubuntu)

# when we want to run any script or create any file or directory in one server from another server.
# we use source copy method.
# example
# consider instance 1 and instance 2
# if we want to create a file in instance 2 from instance 1
# Login to instance 1
# give command like
# ssh ec2-user@<instance 2 IP> 'tocuh /tmp/shell.txt'
# Here shell.txt will be created in instance 2

# if we want to run the mongodb script in instance 2 from instance 1
# Then first copy the mongo.sh and mongo.repo files to instance 2 
# For this purpose we use source concept

# First login to instacne 1 and give command below
# scp mongodb.sh mongo.repo ec2-user@<instance 2 IP>:/tmp
# Here scp --> source copy
# After copying the data we need to run it (from instance 1)
# ssh ec2-user@<instance 2 IP> 'cd /tmp && sudo sh mongodb.sh'
# Here && --> AND


# so we can do the tasks from shell scripting like installing like above in more than 100 servers
# using multithreading or parallel processing concept. But it will become complex
# To avoid this complexity we have new concept called configuration management


# CONFIGURATION MANAGEMENT
# In olden times, if we buy a laptop or pc we need to configure it like
# setting up OS, partition of disk, wifi connection etc..
# similarly, if we have a new server - we need do the configuration
# provisioning server --> plane server
# from provisioning server to we need to configure like --> baseline acording to our needs
# we need to do the below tasks 
# 1. installing programming language
# 2. creating system users and folders
# 3. installing some system packages
# 4. downloading code
# 5. installing dependencies
# 6. creating systemctl service
# 7. enable and starting the services

# All these steps we can call it as configuring of server
# Getting server ready to host our application is called configuration


# There are two types of configurations
# 1. Push
# 2. Pull

# PULL --> A person going to post office everyday and checking for his letters
# PUSH --> A person stayed at home. whenever he receives any letter, post man is taking it and giving to the person

# look at ansible images for clear explanation

# PULL disadvantages
# 1. unncecesary trafficinstallation
# 2. resource wastage
# 3. unnecessary traffic
# 4. no adhoc updates
# 5. new protocol on how to connect and downlaod update


# PUSH
# Here ansible use ssh protocol and push the code into required nodes
# whenever they have update.
# ADVANTAGES
# 1. it uses ssh protocol (so no new ports and protocol needed)
# 2. No agentic softwares
# 3. No traffic etc..

# The server where ansible is installed can be called as ansible server or control server or ansible control

# create an instance and install ansible and name it as ansible
# sudo dnf instal ansible -y

# ansible is developed in python and it is a command line tool. so we don't need to create new systemctl service

# To estable a connection with server
# 1. protocol
# 2. port number
# 3. usernmae
# 4. password
# 5. IP


# Now create a new server called node1
# Now we want to establish a connection between ansible server and node1 server

# go to ansible server and give command like
# ansible all -i <node1 IP address>, -e ansible_user=ec2-user -e ansible_password=<password> -m ping
# ansible all -i 172.31.73.46, -e ansible_user=ec2-user -e ansible_password=DevOps321 -m ping

# Here -m is modules. 
# In Linux we call it as commands similary in ansible it is modules
# Linux commands = ansible modules/collections

# Now if we want to install nginx in node1 from ansible server
# ansible all -i 172.31.73.46, -e ansible_user=ec2-user -e ansible_password=DevOps321 -m dnf -a "name=nginx state=installed"

# here -a is called arguments
# if we run the above command, it will be failed because we are not running with root access

# For root access we use -b --> which means become a root user
# so the command will be 
# ansible all -i 172.31.73.46, -e ansible_user=ec2-user -e ansible_password=DevOps321 -b -m dnf -a "name=nginx state=installed"


# if we get error --> it will be in red
# if we get success --> it will be in green
# if something (state) is changed --> it will be in yellow

# [ ec2-user@ip-172-31-67-192 ~ ]$ ansible all -i 172.31.73.46, -e ansible_user=ec2-user -e ansible_password=DevOps321 -b -m dnf -a "name=nginx state=installed"
# 172.31.73.46 | SUCCESS => {
#     "ansible_facts": {
#         "discovered_interpreter_python": "/usr/bin/python3"
#     },
#     "changed": false,
#     "msg": "Nothing to do",
#     "rc": 0,
#     "results": []
# }

# Here rc - return code (exit code)

# To run the nginx we use
# ansible all -i 172.31.73.46, -e ansible_user=ec2-user -e ansible_password=DevOps321 -b -m service -a "name=nginx state=started"

# Here instead of systemctl start service --> we are using above module/command to start the service

# service --> it is the module 
# state --> started --> to start the service

# By using commands, we can do these tasks but for larger requirements it is not possible
# we have taken the commands and kept in file and we called as shell script
# similary, we will take these ansible modules/commands and keep it in a file and we call it as playbook

# Playbook uses YAML
# YAML --> Yet another markup Language


# consider a joindevops registration form in your browser. That filled data needs to reach joindevops server. This will happen using DTO
# DTO --> Data Transfer Objects
# These will carry the data in specific or paricular format

# The format can be forms or templates


# MarkUp Language
# HTML, XML

# <registor>
#     <Name>kiran</Name>
#     <Mobile>12345678</Mobile>
# </registor>
# This is XML Format

# JSON format --> used for programming

# YAML --> used for scripting


