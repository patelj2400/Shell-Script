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
FILE="/home/jaypatel/Desktop/Shellscripts/names.txt"

for name in $(cat $FILE)
do 
    echo "Name is : $name"
done