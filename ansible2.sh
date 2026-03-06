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

