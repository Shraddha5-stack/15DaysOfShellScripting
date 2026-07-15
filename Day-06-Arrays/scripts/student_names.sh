#!/bin/bash

# Day 06 - Project 1
# Display Student Names

students=("Shraddha" "Rahul" "Priya" "Amit" "Neha")

echo "Student List"
echo "------------"

for student in "${students[@]}"
do
    echo "$student"
done
