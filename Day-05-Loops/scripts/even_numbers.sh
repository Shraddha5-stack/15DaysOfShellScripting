#!/bin/bash

# Day 05 - Print Even Numbers

echo "Even Numbers from 1 to 100"
echo "--------------------------"

for i in {1..100}
do
    if [ $((i % 2)) -eq 0 ]
    then
        echo "$i"
    fi
done
