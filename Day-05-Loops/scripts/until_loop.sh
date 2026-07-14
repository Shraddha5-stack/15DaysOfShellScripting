#!/bin/bash

# Day 05 - Until Loop Example

count=1

until [ $count -gt 5 ]
do
    echo "Number: $count"
    ((count++))
done
