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

a=10

until [[ $a -eq 1 ]]
do
    echo "$a"
    let a--
done