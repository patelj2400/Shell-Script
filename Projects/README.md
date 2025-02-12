# Projects in Shell Scripting

## Table of Contents

1. [Monitoring Free RAM Space](#monitoring-free-ram-space)
2. [Monitoring Free DISK Space and Sending an Alert Email](#monitoring-free-disk-space-and-sending-an-alert-email)
3. [Create a User and Display Information](#create-a-user-and-display-information)
4. [Log File Archiver and Compressor](#log-file-archiver-and-compressor)
---
### Monitoring Free RAM Space
- Monitor the available free memory (RAM) on a Linux system.
- Compare the available memory against a predefined threshold (500 MB in this case).
- If the available memory is below the threshold, display a warning message indicating that the system is running low on memory.
- If the available memory is sufficient, print the current free memory space.
- Ensure system health by continuously monitoring memory usage.
```sh
Example: ram_status.sh 
```
### Monitoring Free DISK Space and Sending an Alert Email
- Monitor the free disk space on the system for a specific disk (`disk3s5`).
- Extract the disk usage percentage for `disk3s5`.
- Compare the disk usage against a threshold value (8%).
- If disk usage is greater than or equal to the threshold, send a warning email to the specified address.
- If disk usage is below the threshold, print that disk space is sufficient.
- Sends an email with the subject "Disk Space alert!" to the recipient ($TO).
- Ensure system health by alerting users when disk space is low.
```sh
Example: file_system_status.sh
```
- Note: Setup Postfix service in system to get a mail.
### Create a User and Display Information
- Create a new user account with a specified username.
- Allow the user to add optional comments to describe the purpose of the account.
- Generate a unique password based on the current timestamp to ensure security.
- Assign the password to the newly created user account.
- Force the user to change their password upon the first login.
- Display the username, generated password, and the hostname of the system.
- Ensure the script is executed with root or sudo privileges for proper user management.
```sh
Example: create_user.sh
```
### Log File Archiver and Compressor
- Ensure that the directory exists before starting the archiving process.
- Check if the `archive` folder exists and create it if it doesn't.
- Find all files larger than 60MB in the specified directory and its subdirectories (depth 1).
- Compress the found files and move them to the `archive` folder.
- Delete the original files only after they have been successfully compressed.
```sh
Example: archive_file.sh
```