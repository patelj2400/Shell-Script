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
#!/bin/bash

num1=10
num2=11

if [ $num1 -eq $num2 ]; then
    echo "$num1 is equal to $num2"
else
    echo "$num1 is not equal to $num2"
fi

if [ $num1 -ne $num2 ]; then
    echo "$num1 is not equal to $num2"
fi

if [ $num1 -gt $num2 ]; then
    echo "$num1 is greater than $num2"
else
    echo "$num1 is not greater than $num2"
fi

if [ $num1 -lt $num2 ]; then
    echo "$num1 is less than $num2"
fi

if [ $num1 -ge $num2 ]; then
    echo "$num1 is greater than or equal to $num2"
else
    echo "$num1 is not greater than or equal to $num2"
fi

if [ $num1 -le $num2 ]; then
    echo "$num1 is less than or equal to $num2"
fi
