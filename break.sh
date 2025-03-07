#!/bin/bash

#IF the number is g=found we will rint he number and show ,the number is found

read -p "Enter a number to check if the number exists int he files- " no

FILE="number.txt"
found=0

for i in $(cat "$FILE")
do

    if [[ "$i" -eq "$no" ]];
      then 
  
        echo "number is found"
        echo "the number is $no"
        found=1
        break
    fi

#while read -r i;
#do
#     if [[ "$i" -eq "$no" ]];
#        then
#  
#          echo "number is found"
#          echo "the number is $no"
#          found=1
#      fi

done

if [[ $found -eq 0 ]];
then
    
     echo "The number is not in the list"

fi

echo " The numbers in the database are: "
cat "$FILE"



