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

cat test.csv | awk 'NR!=1 {print}' | while IFS="," read -r id name age
do  
    echo "ID is : $id"
    echo "Name is : $name"
    echo "Age is $age"
    echo "--------------------"
done <  <(tail -n +2 test.csv)

