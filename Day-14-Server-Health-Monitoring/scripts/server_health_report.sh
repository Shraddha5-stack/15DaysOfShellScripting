#!/bin/bash

# Script Name: server_health_report.sh
# Purpose: Generate a complete server health report

echo "========================================="
echo "      SERVER HEALTH REPORT"
echo "========================================="

echo
echo "1. Hostname"
hostname

echo
echo "-----------------------------------------"
echo "2. System Uptime"
uptime

echo
echo "-----------------------------------------"
echo "3. CPU Usage"
top -bn1 | grep "Cpu(s)"

echo
echo "-----------------------------------------"
echo "4. Memory Usage"
free -h

echo
echo "-----------------------------------------"
echo "5. Disk Usage"
df -h

echo
echo "-----------------------------------------"
echo "6. Top 10 CPU Processes"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -11

echo
echo "========================================="
echo "      REPORT COMPLETED"
echo "========================================="
