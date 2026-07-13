#!/bin/bash

echo "========================================"
echo "    Command Line Argument Validation"
echo "========================================"

if [ $# -ne 3 ]
then
    echo "Error: Please provide exactly 3 arguments."
    echo
    echo "Usage:"
    echo "./argument-validation.sh <Name> <City> <Course>"
    exit 1
fi

echo
echo "Arguments received successfully!"
echo

echo "Name   : $1"
echo "City   : $2"
echo "Course : $3"

echo
echo "========================================"
echo "Script executed successfully."
echo "========================================"

