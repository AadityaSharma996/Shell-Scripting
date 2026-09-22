#!/bin/bash
#These are variables in shell scripting

<< comment
This is a multi line comment
in shell scripting
comment

<< comment
This is manual username
name="Aaditya"

echo "Name is $name, date is $(date)"
comment


<< comment
This is user input username
echo "Enter your name:"

read username

echo "Your name is: $username"
comment


<< comment
In this instead of writing the line enter your name in echo, instead we make the read command as prompt by using -p to print the enter username there only
read -p "Enter Username:" username

echo "Your username is: $username"
comment

read -p "Enter the username:" username

echo "New user is: $username"

sudo useradd -m $username

echo "New user added"


