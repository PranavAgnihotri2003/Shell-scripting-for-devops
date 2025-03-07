#!/bin/bash

#Getting values/names from a file named text


FILE="names.txt"

for name in $(cat $FILE)
do
          echo "Name is $name"
done
