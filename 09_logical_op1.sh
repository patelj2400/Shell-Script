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

file="test.txt"

if ! [[ -f "$file" ]]; then
    echo "The file $file is not exist"
else
    echo "The file $file is exist"
fi