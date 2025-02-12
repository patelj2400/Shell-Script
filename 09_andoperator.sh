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
read -p "Enter your country: " nation

if [[ $age -ge 18 ]] && [[ $nation == "IND" ]];
then
    echo "You can vote"
else
    echo "You can't vote"
fi