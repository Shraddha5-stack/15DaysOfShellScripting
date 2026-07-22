#!/bin/bash

# Script Name: log_cleanup.sh
# Purpose: Delete old log files from a specified directory

echo "========================================"
echo "          LOG CLEANUP"
echo "========================================"

read -p "Enter the log directory: " LOG_DIR

if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory does not exist!"
    exit 1
fi

echo
echo "Log files older than 7 days:"

find "$LOG_DIR" -type f -name "*.log" -mtime +7

echo
read -p "Do you want to delete these files? (y/n): " CHOICE

if [ "$CHOICE" = "y" ] || [ "$CHOICE" = "Y" ]; then
    find "$LOG_DIR" -type f -name "*.log" -mtime +7 -delete
    echo
    echo "Old log files deleted successfully."
else
    echo
    echo "No files were deleted."
fi

echo "========================================"
