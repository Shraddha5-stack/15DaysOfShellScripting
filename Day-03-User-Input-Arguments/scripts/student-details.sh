#!/bin/bash

echo "======================================="
echo "      Student Registration Form"
echo "======================================="

read -p "Enter Student Name      : " NAME
read -p "Enter Age               : " AGE
read -p "Enter City              : " CITY
read -p "Enter Course            : " COURSE
read -p "Enter College           : " COLLEGE

echo
echo "========== Student Details =========="
echo "Name      : $NAME"
echo "Age       : $AGE"
echo "City      : $CITY"
echo "Course    : $COURSE"
echo "College   : $COLLEGE"
echo "====================================="

