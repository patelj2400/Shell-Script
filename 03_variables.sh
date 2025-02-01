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

a =10 #space not allowed
name="Jay"
age=28

echo $a #it will not print the variable value because of the a after space 
echo $name
echo $age

echo "My name is $name and age is $age"

name="Jay Patel"

echo "My name is $name and age is $age"

#Store the hostname value into varibale and use it
HOSTNAME=$(hostname)
echo "My host name is $HOSTNAME"
