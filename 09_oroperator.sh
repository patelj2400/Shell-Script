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

read -p "Enter your age: " age
read -p "Do you have licence: (Yes or No)" ans

if [[ $age -ge 18 ]] || [[ $ans == "Yes" ]];
then
    echo "You can drive with one of verifed driver"
else
    echo "You can't drive"
fi