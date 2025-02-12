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
my_array=(1 2 3 4 jay jack 5 6 )

length=${#my_array[*]}

for((i=0;i<$length;i++))
do
    echo "${my_array[$i]}"
done