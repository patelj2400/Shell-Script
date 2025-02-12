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

#We can enable the debugging of the script using below script
set -x

#If we want to exit the script when a command fail
set -e

#!/bin/bash

if [[ $# -eq 0 ]]
then
    echo "Please pass the arguments"
    exit 1
fi

echo "Your arguement is : $1"
