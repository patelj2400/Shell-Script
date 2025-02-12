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
# Parse a configuration file into key-value pairs

declare -A config

# Read the config file
while IFS='=' read -r key value; do
    config["$key"]="$value"
done < config.txt

# Access values
echo "Username: ${config["username"]}"
echo "Password: ${config["password"]}"
echo "Hostname: ${config["hostname"]}"