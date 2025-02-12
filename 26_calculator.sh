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

num1=$1
num2=$2

echo "Please select any option: "
echo "1: Addition"
echo "2: Subtraction"
echo "3: Multiplication"
echo "4: Division"

read choice

case $choice in
    1)
        let result1=$num1+$num2
        echo "Addition of two number is : $result1";;
    2)
        let result1=$num1-$num2
        echo "Subtraction of two number is : $result1";;
    3)  
      
        echo "Multiplication of two number is : $((num1*num2))";;
    4)        
        let result1=$num1/$num2
        echo "Division of two number is : $result1";;

    *)  echo "Wrong input"

esac
