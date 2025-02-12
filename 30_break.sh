#!/bin/bash
#
#MetaData of the script
#
################################
#
# Author : Jay Patel
# Date : 1 Feb 2025
# Version : 0.1v
#
################################

read -p "Enter your number which is in the loop or not:" no



for i in {1..100}
do 
    if [[ $no -eq $i ]]
    then 
        echo "$no is found!!!"
        break
    fi
    echo "Number is $i"
done