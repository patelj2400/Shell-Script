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

#to check the existing jobs
#crontab -l

#to add a new jobs
#crontab -e

#* * * * * 
#| | | | |___ Day of week(0-6) (Sunday = 0)
#| | | |_____ Month(1-12)
#| | |_______ Day of month (1-31)
#| |_________ Hour(0-23)
#|___________ minute(0-59)

#crontab.guru - to view crontab info

#1 * * * * * cd /Users/jaypatel/Development/Shell-Script && ./39_redirect.sh