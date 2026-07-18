#!/bin/bash

# Day-12 Log Management
# Script: Error Log Checker

echo "================================"
echo " Linux Error Log Checker "
echo "================================"

echo ""

LOG_FILE="/var/log/syslog"

echo "Checking errors in: $LOG_FILE"

echo ""

if [ -f "$LOG_FILE" ]
then

    echo "Recent error messages:"
    echo "----------------------"

    sudo grep -i "error" $LOG_FILE | tail -n 20

else

    echo "Log file not found!"

fi

