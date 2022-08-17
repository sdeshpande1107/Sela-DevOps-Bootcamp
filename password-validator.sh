#!/bin/bash

# Author - shubhamdeshpande1107@gmail.com
#
# Script to validate the password: 

# Setting the color variables

green='\033[0;32m'
red='\033[0;31m'

# Setting password lengh and input variables

# $1 is used to take input with the bash script

password_length=10

password=$1

validate () {       

if (( ${#password} < $password_length )); then
    printf "${red}Too short! password should be atleast 10 characters long"
    exit 1 ;

elif [[ $password != *[[:digit:]]* ]]; then
    printf "${red}Password should contain a digit"
    exit 1;

elif [[ $password != *[[:lower:]]* ]]; then
    printf "${red}Password should contain a lower case letter"
    exit 1;


elif [[ $password != *[[:upper:]]* ]]; then
    printf "${red}Does not contain an upper case letter"
    exit 1;

fi

}


validate $password

printf "${green}Your password is validated"

exit 0
 