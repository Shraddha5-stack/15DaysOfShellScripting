#!/bin/bash

# Script Name: cpu_check.sh
# Purpose: Display CPU usage information

echo "========================================"
echo "          CPU USAGE REPORT"
echo "========================================"

top -bn1 | grep "Cpu(s)"

echo "========================================"
echo "CPU usage check completed."

