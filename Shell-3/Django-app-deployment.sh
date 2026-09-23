#!/bin/bash
#This is a django app deployment through shell scripting

<< comment
We first create function to be called for the entire project deployment
comment

git_clone() {
	echo "clone successfull"
	git clone https://github.com/AadityaSharma996/django-notes-app.git
}

install_requirements(){
	echo "Installing Dependencies"
	sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin nginx -y
}

required_restarts(){
	echo "Restart Initiated"
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy(){
docker build -t notes-app .
#docker run -d -p 8000:8000 notes-app:latest
docker-compose up -d
}

#Calling all the functions for deployment of the project

<< comment
These will cause errors of git, dockerfile, if requirements do not install, if restarts are not initiated, if deployment is not done
To fix these we use if conditions
git_clone
install_requirements
required_restarts
deploy
comment

if ! git_clone;
then
	echo "File already exists"
	cd django-notes-app
fi

if ! install_requirements;
then
	echo "Requirements are not installed"
	exit 1
fi

if ! required_restarts;
then
	echo "System fault found"
	exit 1
fi

if ! deploy;
then
	echo "deployment failed, send mail to admin"
	exit 1
fi

echo "Deployment Successfull"

