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
for i in {1..100}
do

    let result=i%2
    if [[ $result -eq 0 ]]
    then
        continue
    fi
    echo "Odd no is : $i"
done