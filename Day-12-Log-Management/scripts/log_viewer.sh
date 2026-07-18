#!/bin/bash

# Day-12 Log Management
# Script: Log Viewer

echo "================================"
echo " Linux Log Viewer "
echo "================================"

echo ""

echo "Available log files:"
echo ""

echo "1. System Log"
echo "2. Authentication Log"
echo "3. Kernel Log"

echo ""

read -p "Choose log file (1-3): " choice

case $choice in

1)
    echo "Showing System Logs..."
    sudo tail -n 20 /var/log/syslog
    ;;

2)
    echo "Showing Authentication Logs..."
    sudo tail -n 20 /var/log/auth.log
    ;;

3)
    echo "Showing Kernel Logs..."
    dmesg | tail -n 20
    ;;

*)
    echo "Invalid choice"
    ;;

esac

