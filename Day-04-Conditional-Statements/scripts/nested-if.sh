#!/bin/bash

echo "========================================="
echo "      Login Authentication System"
echo "========================================="

read -p "Enter Username: " USERNAME

if [ "$USERNAME" = "admin" ]
then
    read -s -p "Enter Password: " PASSWORD
    echo

    if [ "$PASSWORD" = "admin123" ]
    then
        echo
        echo "Login Successful!"
        echo "Welcome, Admin."
    else
        echo
        echo "Incorrect Password!"
    fi
else
    echo
    echo "Invalid Username!"
fi

echo
echo "========================================="
echo "Program Completed"
echo "========================================="
