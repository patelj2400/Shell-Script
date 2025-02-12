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

# if [ -d dir_name ] if dir exist

# if [ ! -d dir_name ] if dir not exist

# if [ -f file_name ] if file exist

# if [ ! -f file_name ] if file not exist

FILEPATH="/Users/jaypatel/Development/Shell-Script/test.java"

if [[ -f $FILEPATH ]]
then
    echo "file exist in dir"
else
    echo "file does not exist"
    echo "Creating a file "
    touch $FILEPATH
    exit 1
fi