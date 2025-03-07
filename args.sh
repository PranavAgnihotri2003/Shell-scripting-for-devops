#!/bin/bash

#to access the arguements

echo "first arguement is $1"
echo "Second arguement is $2"

echo "ALl the arguements are - $@"   #show the total arguements entered
echo "number of arguements are - $#" # Shows the number of arguments entered in total

# for loop to acces the values from the arguements 

for filename in $@
do
     echo "copying file -$filename"
done
