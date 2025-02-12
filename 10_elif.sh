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

read -p "Enter your marks:" marks



if [[ $marks -ge 80 ]]; then
    echo "Distinction"
elif [[ $marks -ge 70 ]]; then
    echo "First class"
elif [[ $marks -ge 60 ]]; then
    echo "Second class"
elif [[ $marks -ge 50 ]]; then
    echo "Pass"
else
    echo "You are fail"
fi
