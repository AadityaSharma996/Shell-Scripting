#!/bin/bash
#This is a condition file

read -p "Enter Username: " username

if [[ $username == "Aaditya" ]];
then
	echo "Correct"
elif [[ $username == "Vandana" ]];
then
	echo "Correct"
else
	echo "Incorrect"
fi
