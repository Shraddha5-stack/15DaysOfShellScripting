#!/bin/bash

echo "===== Disk Usage Information ====="

echo

echo "Filesystem usage:"
df -h

echo

echo "Current directory size:"
du -sh .
