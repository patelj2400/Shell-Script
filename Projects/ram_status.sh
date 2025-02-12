#!/bin/bash
#
# MetaData
# Name      : Jay Patel
# Date      : 09 Feb 2025
# Version   : V 1.0
# 
# Monitoring the ram status



FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=500

if [[ $FREE_SPACE -lt $TH ]]; then
    echo "WARNING, RAM IS RUNNING LOW"
else
    echo "Ram space is sufficient - $FREE_SPACE"
fi