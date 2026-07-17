#!/bin/bash

FILE="sample.txt"

if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
fi
