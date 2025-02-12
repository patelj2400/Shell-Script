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

read -p "Which site you want to check? " site

ping -c 1 $site
#sleep 5s

if [[ $? -eq 0 ]]
then 
    echo "Succesfully connected to the $site"
else
    echo "Unable to connect $site"
fi