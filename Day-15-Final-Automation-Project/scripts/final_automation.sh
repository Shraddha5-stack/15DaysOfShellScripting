#!/bin/bash

# Script Name: final_automation.sh
# Purpose: Menu-driven automation toolkit

while true
do
    echo "========================================"
    echo "      FINAL AUTOMATION PROJECT"
    echo "========================================"
    echo "1. System Information"
    echo "2. Disk Usage"
    echo "3. Memory Usage"
    echo "4. CPU Usage"
    echo "5. Backup Project"
    echo "6. Log Cleanup"
    echo "7. User Report"
    echo "8. Exit"
    echo "========================================"

    read -p "Enter your choice: " choice

    case $choice in
        1) ./system_info.sh ;;
        2) ./disk_check.sh ;;
        3) ./memory_check.sh ;;
        4) ./cpu_check.sh ;;
        5) ./backup_home.sh ;;
        6) ./log_cleanup.sh ;;
        7) ./user_report.sh ;;
        8)
            echo "Thank you for using the Final Automation Toolkit!"
            exit 0
            ;;
        *)
            echo "Invalid choice! Please try again."
            ;;
    esac

    echo
    read -p "Press Enter to return to the menu..."
done
