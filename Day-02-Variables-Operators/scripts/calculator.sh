#!/bin/bash

# ==========================================
# Script Name : calculator.sh
# Author      : Shraddha Wankhade
# Description : Simple Calculator using Bash
# ==========================================

echo "======================================"
echo "        Simple Bash Calculator"
echo "======================================"

read -p "Enter first number : " NUM1
read -p "Enter second number: " NUM2

echo
echo "========== Results =========="

echo "Addition       : $((NUM1 + NUM2))"
echo "Subtraction    : $((NUM1 - NUM2))"
echo "Multiplication : $((NUM1 * NUM2))"

if [ "$NUM2" -ne 0 ]; then
    echo "Division       : $((NUM1 / NUM2))"
    echo "Modulus        : $((NUM1 % NUM2))"
else
    echo "Division       : Cannot divide by zero"
    echo "Modulus        : Cannot divide by zero"
fi

echo "============================="
echo "Calculation Completed!"
