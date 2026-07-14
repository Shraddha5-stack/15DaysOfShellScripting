#!/bin/bash

echo "========================================="
echo "      Voting Eligibility Checker"
echo "========================================="

read -p "Enter your age: " AGE

if [ "$AGE" -ge 18 ]
then
    echo
    echo "Congratulations! You are Eligible to Vote."
else
    echo
    echo "Sorry! You are Not Eligible to Vote."
fi

echo
echo "========================================="
echo "Program Completed"
echo "========================================="

