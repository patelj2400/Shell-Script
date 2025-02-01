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

#Array

myArray=( 1 2 3.5 4.2 Jay "Hello!")

echo value of 5th index = ${myArray[5]}

echo all the value in array are = ${myArray[*]}

echo lenght of array = ${#myArray[*]}

echo "Value from index 2-4 = " ${myArray[*]:2:4}

#Updating our array with new values

myArray+=( NewTest 30 40)

echo "Value of new array are = " ${myArray[*]}
