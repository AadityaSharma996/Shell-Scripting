#!/bin/bash
#This is a function file

function adi_vandana() {
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
}

adi_vandana
