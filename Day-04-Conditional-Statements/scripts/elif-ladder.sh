#!/bin/bash

echo "=========================================="
echo "      Student Grade Calculator"
echo "=========================================="

read -p "Enter student marks (0-100): " MARKS

if [ "$MARKS" -ge 90 ]
then
    GRADE="A+"
elif [ "$MARKS" -ge 80 ]
then
    GRADE="A"
elif [ "$MARKS" -ge 70 ]
then
    GRADE="B"
elif [ "$MARKS" -ge 60 ]
then
    GRADE="C"
elif [ "$MARKS" -ge 50 ]
then
    GRADE="D"
else
    GRADE="F"
fi

echo
echo "Student Marks : $MARKS"
echo "Student Grade : $GRADE"

echo
echo "=========================================="
echo "Program Completed"
echo "=========================================="
