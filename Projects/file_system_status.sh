#!/bin/bash
#
# MetaData
# Name      : Jay Patel
# Date      : 09 Feb 2025
# Version   : V 1.0
# 


#Monitoring the free fs space disk

FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "disk3s5" | awk '{print $5}' | tr -d %)

TO="patelj2300@gmail.com"

if [[ $FU -ge 8 ]]; then
    echo "Warning, Disk space is low - $FU %" |  mail -s "Disk Space alert!" $To
else
    echo "Disk space is enough"
fi