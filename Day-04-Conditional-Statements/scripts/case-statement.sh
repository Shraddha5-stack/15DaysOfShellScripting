#!/bin/bash

echo "=========================================="
echo "        Simple Calculator"
echo "=========================================="

echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

echo
read -p "Enter your choice (1-4): " CHOICE

read -p "Enter First Number: " NUM1
read -p "Enter Second Number: " NUM2

echo

case $CHOICE in
    1)
        RESULT=$((NUM1 + NUM2))
        echo "Result = $RESULT"
        ;;
    2)
        RESULT=$((NUM1 - NUM2))
        echo "Result = $RESULT"
        ;;
    3)
        RESULT=$((NUM1 * NUM2))
        echo "Result = $RESULT"
        ;;
    4)
        if [ "$NUM2" -eq 0 ]
        then
            echo "Error: Division by zero is not allowed."
        else
            RESULT=$((NUM1 / NUM2))
            echo "Result = $RESULT"
        fi
        ;;
    *)
        echo "Invalid Choice!"
        ;;
esac

echo
echo "=========================================="
echo "Program Completed"
echo "=========================================="
