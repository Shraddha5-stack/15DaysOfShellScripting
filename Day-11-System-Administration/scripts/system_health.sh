#!/bin/bash

echo "===== System Health Report ====="

echo

echo "Hostname:"
hostname

echo

echo "Uptime:"
uptime

echo

echo "Memory Usage:"
free -h

echo

echo "Disk Usage:"
df -h

echo

echo "Logged in Users:"
who

echo

echo "Running Processes:"
ps aux | head
