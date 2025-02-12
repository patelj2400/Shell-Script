#!/bin/bash
#
# MetaData
# Name      : Jay Patel
# Date      : 09 Feb 2025
# Version   : V 1.0
# 
# This script is use to create a user and display information
#
# Script should be executed with sudo/root access.
if [[ "$UID" -ne 0 ]]
then 
    echo "Please run with sudo or root user"
    exit 1
fi

# User should provide at least one argument as username, else guide
if [[ $# -lt 1 ]]
then
    echo "Usage: ${0} USER_NAME [Comments]..."
    echo "Create a user with the name USER_NAME and optional comments (What purpose)"
    exit 1
fi

# Store 1st argument as username
USER_NAME="${1}"

# In case of more than one argument, store the rest as account comments
shift
COMMENT="$@"  # Capture all remaining arguments as the comment

# Create a password (based on current timestamp to ensure it's unique)
PASSWORD=$(date +%s%N)

# Create the user with the provided comment
useradd -c "$COMMENT" -m "$USER_NAME"

# Check if the user was created successfully
if [[ $? -ne 0 ]]
then
    echo "The account could not be created"
    exit 1
fi

# Set the password for the user
echo "$USER_NAME:$PASSWORD" | chpasswd

# Check if the password was successfully set
if [[ $? -ne 0 ]]
then
    echo "Password could not be set"
    exit 1
fi

# Force the user to change the password on the first login
passwd -e "$USER_NAME"

# Display the username, password, and the host where created
echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo "Hostname: $(hostname)"
