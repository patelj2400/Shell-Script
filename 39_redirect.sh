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

echo date >> ping.log
ping -c 1 www.google.com >> ping.log
echo "---------------------------------------------------" >> ping.log