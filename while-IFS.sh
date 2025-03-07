#!/bin/bash

cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age

do
 
         echo "---------------"
         echo "Id is $id"
         echo "name is $name"
         echo "age is $age" 
         echo "---------------"

done < test.csv
