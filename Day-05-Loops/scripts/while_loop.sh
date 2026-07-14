#!/bin/bash

# Day 05 - While Loop Example

count=1

while [ $count -le 5 ]
do
    echo "Number: $count"
    ((count++))
done

