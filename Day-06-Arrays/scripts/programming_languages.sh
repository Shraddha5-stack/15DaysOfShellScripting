#!/bin/bash

# Day 06 - Project 2
# Favorite Programming Languages

languages=("Bash" "Python" "Java" "JavaScript" "Go")

echo "Programming Languages"
echo "---------------------"

echo "All Languages: ${languages[@]}"
echo ""

echo "Total Languages: ${#languages[@]}"
echo ""

echo "Displaying Each Language:"
for language in "${languages[@]}"
do
    echo "$language"
done
