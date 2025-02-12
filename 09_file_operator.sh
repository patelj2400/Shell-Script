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

file="example.txt"
dir="mydir"

# Check if file exists
if [ -e "$file" ]; then
    echo "The file '$file' exists."
else
    echo "The file '$file' does not exist."
fi

# Check if it's a regular file
if [ -f "$file" ]; then
    echo "'$file' is a regular file."
fi

# Check if the directory exists
if [ -d "$dir" ]; then
    echo "The directory '$dir' exists."
else
    echo "The directory '$dir' does not exist."
fi

# Check if file is readable
if [ -r "$file" ]; then
    echo "'$file' is readable."
fi

# Check if file is writable
if [ -w "$file" ]; then
    echo "'$file' is writable."
fi

# Check if file is executable
if [ -x "$file" ]; then
    echo "'$file' is executable."
else
    echo "'$file' is not executable."
fi

# Check if file is not empty
if [ -s "$file" ]; then
    echo "'$file' is not empty."
else
    echo "'$file' is empty."
fi
