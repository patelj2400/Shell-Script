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

echo "Please choose a option: "
echo "1: To print the date"
echo "2: To list all the file"
echo "3: To check the present working dir"
echo ""

read choice

case $choice in
    1)
        echo "Today's date is:"
        date;;
    2)ls;;
    3)pwd;;
    *)echo "Please enter a correct choice"
esac