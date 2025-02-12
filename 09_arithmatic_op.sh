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
#Maths Calculatiion


a=10
b=5

let add=$a+$b
echo "$add"

let mul=$a*$b
echo "$mul"


echo "Addition: $((a + b))"
echo "Subtraction: $((a - b))"
echo "Multiplication: $((a * b))"
echo "Division: $((a / b))"
echo "Modulus: $((a % b))"
echo "Exponentiation: $((a ** b))"
