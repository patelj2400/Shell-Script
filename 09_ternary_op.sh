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

[[ $age -ge 18 ]] && echo "You are adult" || echo "You are minor"

