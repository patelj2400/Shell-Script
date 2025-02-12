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
#To create a user, provide username and description

echo "Creating user"
echo "Username is : $1"

shift    
echo "Description is : $@"