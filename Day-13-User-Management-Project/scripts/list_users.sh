#!/bin/bash

# Script Name: list_users.sh
# Purpose: Display all Linux users

echo "===== List of Linux Users ====="

cut -d: -f1 /etc/passwd

