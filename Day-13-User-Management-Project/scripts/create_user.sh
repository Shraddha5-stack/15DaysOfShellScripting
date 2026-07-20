#!/bin/bash

# Script Name: create_user.sh
# Purpose: Create a new Linux user

echo "===== User Creation Script ====="

read -p "Enter the username to create: " username

if id "$username" &>/dev/null
then
    echo "User '$username' already exists."
else
    sudo useradd -m "$username"

    if [ $? -eq 0 ]
    then
        echo "User '$username' created successfully."
    else
        echo "Failed to create user."
    fi
fi
