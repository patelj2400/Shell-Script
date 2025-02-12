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
#Declaring an Array
#Explicit Declaration
declare -a my_array

#Implicit Declaration
my_array=("India" "USA" "China" 1 2 3)
my_array2=("Test" "TEST2")

#Accessing a single element using index
echo ${my_array[2]}

#Access Indices
echo ${!my_array[*]}

echo ${my_array[@]} 
echo ${my_array[*]}

#Append an Element
my_array+=("UK")
echo ${my_array[*]}

#Insert at a Specific Index
my_array[3]="Canada"
echo ${my_array[*]}

#Remove by Index
unset my_array[4]
echo ${my_array[*]}

#Remove All Elements
echo ${my_array2[*]}
unset my_array2
echo ${my_array2[*]}

#Number of Elements
echo ${#my_array[*]}

#Length of a Specific Element
echo ${#my_array[1]}  

#Using a for Loop
for i in "${my_array[*]}"; do
    echo "$i"
done

#Using Indices
for index in "${!my_array[@]}"; do
    echo "Element $index: ${my_array[$index]}"
done

#Slicing an Array
echo ${my_array[@]:1:2} 

#Search for an Element
if [[ "${my_array[@]} " =~ " UK " ]]; then
    echo "USA Found!"
fi

#Replace a Substring in All Elements
echo ${my_array[@]//a/X}  

my_new_array=(${my_array[*]})
echo "My new array is ${my_new_array[*]}"

#Merging Arrays
array1=("1 2")
array2=("3 4")

new_array=("${array1[*]}" "${array2[*]}")
echo "${new_array[*]}"

#Sorting an Array
sorted_array=($(for i in "${my_array[@]}"; do echo "$i"; done | sort))
echo ${sorted_array[@]}  

#Reversing an Array
reversed_array=($(echo "${my_array[@]}" | tr ' ' '\n' | tac | tr '\n' ' '))
echo ${reversed_array[@]}  # Output: Cherry Banana Apple


#Multidimensional Arrays
declare -A matrix
matrix[0,0]="A"
matrix[0,1]="B"
matrix[1,0]="C"
matrix[1,1]="D"

echo ${matrix[0,1]}  # Output: B