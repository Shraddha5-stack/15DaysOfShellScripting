#!/bin/bash

# Day 06 - Arrays

# Creating an array
fruits=("Apple" "Banana" "Mango" "Orange")

echo "Original Array:"
echo "${fruits[@]}"
echo ""

# Remove the second element (Banana)
unset fruits[1]

echo "After Removing Banana:"
echo "${fruits[@]}"
echo ""

echo "Array Length: ${#fruits[@]}"
