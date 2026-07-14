#!/bin/bash

# Day 05 - Break Statement Example

echo "=== Break Example ==="

for i in 1 2 3 4 5
do
    if [ $i -eq 3 ]
    then
        echo "Breaking the loop at Number: $i"
        break
    fi

    echo "Number: $i"
done

echo ""

echo "=== Continue Example ==="

for i in 1 2 3 4 5
do
    if [ $i -eq 3 ]
    then
        echo "Skipping Number: $i"
        continue
    fi

    echo "Number: $i"
done
