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
# Key-value pair example using associative arrays

# Declare an associative array
declare -A fruits

# Add key-value pairs
fruits["apple"]="red"
fruits["banana"]="yellow"
fruits["grape"]="purple"

# Access a value
echo "The color of an apple is: ${fruits["apple"]}"

# List all keys
echo "All keys: ${!fruits[*]}"

# List all values
echo "All values: ${fruits[@]}"

# Iterate over key-value pairs
echo "Iterating over key-value pairs:"
for key in "${!fruits[@]}"; do
    echo "Fruit: $key, Color: ${fruits[$key]}"
done

# Remove a key-value pair
unset fruits["banana"]
echo "After removing banana, all keys: ${!fruits[@]}"

# Check if a key exists
if [[ -v fruits["banana"] ]]; then
    echo "Banana exists!"
else
    echo "Banana does not exist."
fi