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
if [[ $UID -eq 0 ]]; then
    echo "Root user"
else
    echo "Not a root user"
fi