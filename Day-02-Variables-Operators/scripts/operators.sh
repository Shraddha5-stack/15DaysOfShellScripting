#!/bin/bash

# ==========================================
# Script Name : operators.sh
# Author      : Shraddha Wankhade
# Description : Demonstrates comparison operators
# ==========================================

NUM1=20
NUM2=10

echo "========== Comparison Operators =========="

echo "Number 1 : $NUM1"
echo "Number 2 : $NUM2"

echo

if [ $NUM1 -eq $NUM2 ]; then
    echo "Equal                : TRUE"
else
    echo "Equal                : FALSE"
fi

if [ $NUM1 -ne $NUM2 ]; then
    echo "Not Equal            : TRUE"
else
    echo "Not Equal            : FALSE"
fi

if [ $NUM1 -gt $NUM2 ]; then
    echo "Greater Than         : TRUE"
else
    echo "Greater Than         : FALSE"
fi

if [ $NUM1 -lt $NUM2 ]; then
    echo "Less Than            : TRUE"
else
    echo "Less Than            : FALSE"
fi

if [ $NUM1 -ge $NUM2 ]; then
    echo "Greater or Equal     : TRUE"
else
    echo "Greater or Equal     : FALSE"
fi

if [ $NUM1 -le $NUM2 ]; then
    echo "Less or Equal        : TRUE"
else
    echo "Less or Equal        : FALSE"
fi

echo "=========================================="
