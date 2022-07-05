#!/bin/bash

echo -e "\n
[ 1 ] for listing all the user accounts name \n
[ 2 ] for counting the number of logged-in user accounts  \n
[ 3 ] for listing the names of currently logged-in users\n
[ 4 ] for checking the groups to which the current user belong \n"


read userInput


case $userInput in
    1)
    
    lslogins -o USER
    ;;
    2)
    
    who --count | grep users
    ;;
    3)
    
    who -q | grep -v users
    ;;
    4)
    
    groups
    ;;
    *)
    echo -e "Please Enter Correct Input \n"
    ;;    
esac
