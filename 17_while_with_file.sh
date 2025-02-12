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
while read myvar
do
    echo "Value from my file is $myvar"
done < config.txt