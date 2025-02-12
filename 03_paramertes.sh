#!/bin/bash
# This script greets the user with their name.

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "All arguments: $*"
echo "Number of arguments: $#"

# Greet the user
if [ $# -gt 0 ]; then
    echo "Hello, $1!"
    echo "Hello, $2!"
else
    echo "Hello, World!"
fi