#!/bin/bash

# Script Name: backup_home.sh
# Purpose: Backup the 15DaysOfShellScripting project

BACKUP_DIR="$HOME/backups"
mkdir -p "$BACKUP_DIR"

BACKUP_FILE="$BACKUP_DIR/project_backup_$(date +%Y%m%d_%H%M%S).tar.gz"

echo "========================================"
echo "      PROJECT BACKUP"
echo "========================================"

tar -czf "$BACKUP_FILE" -C "$HOME" 15DaysOfShellScripting

if [ $? -eq 0 ]; then
    echo
    echo "Backup completed successfully!"
    echo "Backup File: $BACKUP_FILE"
else
    echo
    echo "Backup failed!"
fi

echo "========================================"
