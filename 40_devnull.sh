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

read -p "Enter your website to check ping : " website


ping -c 1 $website &> /dev/null

if [[ $? -eq 0 ]]; then
    echo "Website running and successfully connected"
else
    echo "Website down or not exist"
fi