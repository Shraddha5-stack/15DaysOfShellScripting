#!/bin/bash

# Script Name: delete_user.sh
# Purpose: Delete an existing Linux user

echo "===== User Deletion Script ====="

read -p "Enter the username to delete: " username

if id "$username" &>/dev/null
then
    sudo userdel -r "$username"

    if [ $? -eq 0 ]
    then
        echo "User '$username' deleted successfully."
    else
        echo "Failed to delete user."
    fi
else
    echo "User '$username' does not exist."
fi
