#!/bin/bash

# ==========================================
# Script Name : read-input.sh
# Author      : Shraddha Wankhade
# Description : Demonstrates user input using the read command
# ==========================================

echo "======================================="
echo "      Student Information Form"
echo "======================================="

read -p "Enter your name: " NAME
read -p "Enter your age: " AGE
read -p "Enter your city: " CITY
read -p "Enter your favorite programming language: " LANGUAGE

echo
echo "========== Student Details =========="

echo "Name      : $NAME"
echo "Age       : $AGE"
echo "City      : $CITY"
echo "Language  : $LANGUAGE"

echo "====================================="
echo "Thank you for providing your details!"
