#!/bin/bash

# Day 05 - Multiplication Table

echo "Enter a number:"
read number

echo ""
echo "Multiplication Table of $number"
echo "------------------------------"

for i in {1..10}
do
    result=$((number * i))
    echo "$number x $i = $result"
done
