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

#How to stroe the key values pairs
#

declare -A myArray
myArray=( [name]=Jay [age]=28 [city]=Toronto )

echo "Name is ${myArray[name]}"
echo "City is ${myArray[age]}"
