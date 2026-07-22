#!/bin/bash

# Script Name: system_info.sh
# Purpose: Display basic system information

echo "========================================"
echo "        SYSTEM INFORMATION"
echo "========================================"

echo "Hostname       : $(hostname)"
echo "Current User   : $(whoami)"
echo "Kernel Version : $(uname -r)"
echo "Operating System:"
uname -o

echo
echo "Current Date & Time:"
date

echo
echo "System Uptime:"
uptime

echo "========================================"

