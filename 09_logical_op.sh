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
x=10
y=20
z=10

if [[ $x -eq $y ]] && [[  $y -gt $z ]] 
then
    echo "Both contion are true"
    echo "$x is equal to $y"
    echo "$y is greater than $z"

else
    echo "At least one condition is true: Either $x is equal to $y OR $y is greater than $x"
fi


if [[ $x -eq $y ]] || [[  $y -gt $z ]] 
then
     echo "Both contion are true"
    echo "$x is equal to $y"
    echo "$y is greater than $z"

else
    echo "Both condition are not true"
fi
