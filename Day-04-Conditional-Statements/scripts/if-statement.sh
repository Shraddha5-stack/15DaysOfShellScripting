#!/bin/bash

echo "======================================"
echo "     Positive Number Checker"
echo "======================================"

read -p "Enter a number: " NUMBER

if [ "$NUMBER" -gt 0 ]
then
    echo
    echo "The number $NUMBER is a Positive Number."
fi

echo
echo "======================================"
echo "Program Completed"
echo "======================================"
