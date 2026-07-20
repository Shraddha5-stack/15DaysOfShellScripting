#!/bin/bash

# Script Name: lock_unlock_user.sh
# Purpose: Lock or unlock a Linux user account

echo "===== User Lock/Unlock Script ====="

read -p "Enter the username: " username

if ! id "$username" &>/dev/null
then
    echo "User '$username' does not exist."
    exit 1
fi

echo "Choose an option:"
echo "1. Lock User"
echo "2. Unlock User"

read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        sudo passwd -l "$username"
        echo "User '$username' has been locked."
        ;;
    2)
        sudo passwd -u "$username"
        echo "User '$username' has been unlocked."
        ;;
    *)
        echo "Invalid choice."
        ;;
esac
