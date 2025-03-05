#!/bin/bash

create-directory (){
mkdir demo
}

if ! create-directory; then
        echo "The code is being exited as the directory already exists"
	exit 1
fi

echo "This should not work because the code is interrupted"

