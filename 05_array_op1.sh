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
# Array operations example

# Declare an array
my_array=("Apple" "Banana" "Cherry")

# Access elements
echo "First element: ${my_array[0]}"
echo "All elements: ${my_array[@]}"

# Add an element
my_array+=("Date")
echo "After adding Date: ${my_array[@]}"

# Remove an element
unset my_array[3]
echo "After removing Date: ${my_array[@]}"

# Iterate over the array
echo "Iterating over the array:"
for fruit in "${my_array[@]}"; do
    echo "$fruit"
done

# Array length
echo "Number of elements: ${#my_array[@]}"

# Slicing
echo "Slice from index 1: ${my_array[@]:1:2}"

# Search for an element
if [[ " ${my_array[@]} " =~ " Cherry " ]]; then
    echo "Cherry found!"
fi

# Copy array
new_array=("${my_array[@]}")
echo "Copied array: ${new_array[@]}"

# Merge arrays
array1=("Apple" "Banana")
array2=("Cherry" "Date")
merged_array=("${array1[@]}" "${array2[@]}")
echo "Merged array: ${merged_array[@]}"