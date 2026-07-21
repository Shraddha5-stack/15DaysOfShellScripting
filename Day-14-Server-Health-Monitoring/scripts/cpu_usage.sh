#!/bin/bash

# Script Name: cpu_usage.sh
# Purpose: Display current CPU usage

echo "===== CPU Usage Monitor ====="

top -bn1 | grep "Cpu(s)"
