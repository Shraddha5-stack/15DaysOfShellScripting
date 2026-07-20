#!/bin/bash

# Script Name: user_info.sh
# Purpose: Display information about a Linux user

echo "===== User Information Script ====="

read -p "Enter the username: " username

if id "$username" &>/dev/null
then
    echo ""
    echo "User Details:"
    id "$username"

    echo ""
    echo "Home Directory:"
    grep "^$username:" /etc/passwd | cut -d: -f6

    echo ""
    echo "Login Shell:"
    grep "^$username:" /etc/passwd | cut -d: -f7
else
    echo "User '$username' does not exist."
fi

