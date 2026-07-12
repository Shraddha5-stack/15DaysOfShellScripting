#!/bin/bash

# ==========================================
# Script Name : arithmetic.sh
# Author      : Shraddha Wankhade
# Description : Demonstrates arithmetic operations in Bash
# ==========================================

NUM1=20
NUM2=5

echo "========== Arithmetic Operations =========="

echo "First Number  : $NUM1"
echo "Second Number : $NUM2"

echo

echo "Addition       : $((NUM1 + NUM2))"
echo "Subtraction    : $((NUM1 - NUM2))"
echo "Multiplication : $((NUM1 * NUM2))"
echo "Division       : $((NUM1 / NUM2))"
echo "Modulus        : $((NUM1 % NUM2))"

echo "==========================================="
