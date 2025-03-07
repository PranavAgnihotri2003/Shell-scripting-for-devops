#!/bi/bash

#And operator

read -p "What is your age? " age

read -p "What is your nationality " country
# || would return true even if one of the condition is true
if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then 
      echo "you can vote"
else 

      echo "You cant vote "
fi
