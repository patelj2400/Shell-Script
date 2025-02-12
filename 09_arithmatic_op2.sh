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
b=20
c=10
d=15
e=5
f=10

if [ $a -eq $c ]; then
    echo "$a is equal to $c"
fi

if [ $b -ne $d ]; then
    echo "$b is not equal to $d"
fi

if [ $d -gt $e ]; then
    echo "$d is greater than $e"
fi

if [ $e -lt $b ]; then
    echo "$e is less than $b"
fi

if [ $d -ge $a ]; then
    echo "$d is greater than or equal to $a"
fi

if [ $e -le $f ]; then
    echo "$e is less than or equal to $f"
fi
