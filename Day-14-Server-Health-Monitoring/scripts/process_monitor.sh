#!/bin/bash

# Script Name: process_monitor.sh
# Purpose: Display the top 10 running processes by CPU usage

echo "===== Top 10 Running Processes ====="

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 11
