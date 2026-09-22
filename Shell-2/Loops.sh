#!/bin/bash

#This is for loop in shell scripting


#To print multiple names or make multiple folders use for loop
<< comment
for ((i=1; i<=5; i++))
do
	echo "Aaditya$i"
done
comment

<< comment

for ((i=$2; i<=$3; i++))
do
	echo "$1$i"
done
comment

#This is while loop in shell scripting

<< comment
num=0

while [[ $num -le 5 ]]
do
	echo "Aaditya"
	num=$num+1
done
comment

#Even and odd in loop

num=0

while [[ $num -le 10 ]]
do
	if [[ $((num % 2)) -eq 0 ]]
	then
		echo "Even numbers are: "
		echo "$num"
	fi
	num=$((num+1))
done

