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

#New variable
var="Hey this is script is demonstrate string operation"

#here store for length
myVarLength=${#var}
echo "Show a variable=  $var"

#Find the length of variable
echo "Length of the myvar is =  $myVarLength"


mobileNumber=919913099130
#Get lenght of variable

echo "Lenght of mobile number is = ${#mobileNumber}"

#Convert it into upper case
echo "Upper case is ---  ${var^^}"

#Convert it into lower case
echo "Lower case is ---  ${var,,}"

# Replace a string
newVar=${var/Hey/Hey Guys}

echo "New variable is = $newVar"

#slice men's we can get spacific words

echo "After slice ---->  ${var:4:8}"
