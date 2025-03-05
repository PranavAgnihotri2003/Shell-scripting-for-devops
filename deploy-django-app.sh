#!/bin/bash

<<task

deploy a django app
and handle the code for erros
task

code_clone(){

if [ -d "django-notes-app" ]; then
    echo "The code directory already exists. Pulling latest changes..."
    cd django-notes-app && git pull origin main && cd ..

else
  
           echo "cloning the django app.."
           git clone https://github.com/LondheShubham153/django-notes-app.git
fi 
}


install_requirements() {

              echo "Installing dependencies"
              sudo apt-get install docker.io nginx -y
 }

required_restarts() {
        sudo chown $USER /var/run/docker.sock
        sudo systemctl enable docker
        sudo systemctl enable nginx
	sudo systemctl restart docker
 }

deploy() {

         docker build -t notes-app .
 docker run -d -p 8000:8000 notes-app:latest
 }


echo "************ DEPLOYEMENT STARTED ************"

if ! code_clone; then
	echo "The code directory already exists"
	cd django-notes-app
fi

if ! install_requirements; then 
	echo "Installation failed"
	exit 1
fi
if ! required_restarts; then
	echo "System fault identified"
	exit 1
fi
if ! deploy; then
	echo "Deployement failed, mail the admin"
	#send mail
fi

echo "************ DEPLOYEMENT DONE ************"
