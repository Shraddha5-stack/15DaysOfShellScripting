#!/bin/bash

# Script Name: user_report.sh
# Purpose: Display user information

echo "========================================"
echo "          USER REPORT"
echo "========================================"

echo "Current User:"
whoami

echo
echo "Logged-in Users:"
who

echo
echo "Total Number of Users:"
cut -d: -f1 /etc/passwd | wc -l

echo
echo "User Accounts:"
cut -d: -f1 /etc/passwd

echo
echo "========================================"
echo "User report generated successfully!"
echo "========================================"
