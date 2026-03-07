#!/bin/bash

Consider a student object
<Students>
    <Student>
        <Firstname>prassu</Firstname>
        <DOB>2001-05-08</DOB>
        <Email>prassu@gmail.com</Email>
        <Addresses>
            <PermenentAddress>
                <Flat>105</Flat>
                <City>Hyderabad</City>
            </PermenenAaddress>
                <Flat>105</Flat>
                <City>Hyderabad</City>
            <CurrentAddress>
                <Flat>105</Flat>
                <City>Hyderabad</City>
            </CurrentAddress>
        </Addresses>
    </Student>
</Students>

This is example for XML format - we have students object
Each student have their own data.
In students object, we have student object.
Inside student objects we have objects like Firstname, DOB, Addresses ect..


This is JSON format

{
    "students" : 
    [
        {
            "FirstName" : "prassu",
            "DOB" : "2001-05-08",
            "address": [
                {
                "type":"permennet",
                "Flat": 105,
                "City": "Hyderabad",
                },
                {
                "type": "permennet",
                "Flat": 105,
                "City": "Hyderabad",  
                };
            ],
            "skills" : ["java", "devops", "cloud"]
        },
    ]
}


This is YAML format
YAML is similar to python in indentation. space should be specific.

- name: "prassu"
  dob: 2001-05-08
  mobilenumber: 123456789
  Addresses:
  - flat: 105
    city: Hyderabad
    type: permenent

  - flat: 105
    city: Hyderabad
    type: current

- name: "prassu"
  dob: 2001-05-08
  mobilenumber: 123456789
  Addresses:
  - flat: 105
    city: Hyderabad
    type: permenent

  - flat: 105
    city: Hyderabad
    type: current


In ansible commands won't help much so we need to write playbooks

inventory --> whar are the resources available
Inventory means List of servers here in ansible. like what are the servers ansible can connect to.

inventory.ini
in this file we need to give the group of servers which ansible cannoect with.
example.
To give frontend servers
[frontend]
<IP>

To give backend servers
[backend]
<IP>

To give entire list of servers in a project
[roboshop:children]
[frontend]
[backend]

To give dispatach server 
we can give directly without includinh it any group

To run the inventory file
ansible frontend -i inventory.ini --list-hosts
This command will show you the list of frontend servers which are available in inventory

if we want backend servers 
ansible backend -i inventory.ini --list-hosts

if we want all servers 
ansible all -i inventory.ini --list-hosts

if we want specific group like roboshop servers 
ansible roboshop -i inventory.ini --list-hosts

if we want ungrouped or dispatch servers 
ansible ungrouped -i inventory.ini --list-hosts

To see the servers in a graph view
ansible-inventory -i inventory.ini --graph


Ansible is built in python
To connect with amazon or azure etc.. via ansible

we will write the ansible script in playbooks
once we give input in playbooks, ansible runs inside python and connect to 
the system using  API

Ansible handles YAML format easily.

consider a server in inventory and we are trying to ping that server using playbook
playbook1.yaml
- name: ping your server
  hosts: web
  tasks:
  - name: ping the web server
    ansible.builtin.ping:

command to run the script
ansible-playbook -i inventory.ini -e anisble_user=ec2-user -e ansible_password=DevOps321 playbook1.yaml


