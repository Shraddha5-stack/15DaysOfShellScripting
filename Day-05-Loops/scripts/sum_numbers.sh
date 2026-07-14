#!/bin/bash

# Day 05 - Sum of Numbers

echo "Enter a number:"
read number

sum=0

for ((i=1; i<=number; i++))
do
    sum=$((sum + i))
done

echo ""
echo "Sum of numbers from 1 to $number is: $sum"
