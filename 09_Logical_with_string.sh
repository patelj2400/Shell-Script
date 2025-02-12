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
str1="Hello"
str2="World"
str3=""

if [[ "$str1" = "Hello" ]]; then
    echo "$str1 is the same with the Hello"
else
    echo "$str1 is not the same with the Hello"
fi


if [[ "$str1" = "World" ]]; then
    echo "$str2 string is the same"
else
    echo "$str2 string is not the same with World"
fi


if [[ "$str1" != "$str2" ]]; then

     echo "$str1 is not the same with $str2"
else

    echo "$str2 string is the same"
fi


if [[ -z "$str3" ]]; then
    echo "String is empty"
else
    echo "String is not empty"
fi

if [ -n "$str1" ]; then
    echo "str1 is not an empty string"
fi