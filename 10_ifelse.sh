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

read -p "Enter your age:" age

if [[ $age -ge 18 ]]; then
    echo "You are eligiable for the voting"
else
    echo "You are not eligiable for the vote"
fi
