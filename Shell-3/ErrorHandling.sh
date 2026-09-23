#!/bin/bash
#This is error handling in shell scripting


#This code creates file once but not twice because file already exists after one successful run
<< comment
create_directory(){
	mkdir Aaditya
}
create_directory
echo "This file already exists"
comment

#To handle such situations we use if conditions in this

create_directory(){
	mkdir Aaditya
}
if ! create_directory;
then
	echo "File already exists"
	exit 1
fi
echo "File created successfully"
