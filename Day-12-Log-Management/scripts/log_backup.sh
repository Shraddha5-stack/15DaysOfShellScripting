#!/bin/bash

# Day-12 Log Management
# Script: Log Backup

echo "================================"
echo " Linux Log Backup Script "
echo "================================"

echo ""

SOURCE="/var/log"
BACKUP_DIR="$HOME/log_backup"

DATE=$(date +%Y-%m-%d)

BACKUP_FILE="logs_backup_$DATE.tar.gz"

echo "Creating backup directory..."

mkdir -p $BACKUP_DIR

echo ""

echo "Backing up logs from: $SOURCE"

sudo tar -czf $BACKUP_DIR/$BACKUP_FILE $SOURCE

echo ""

echo "Backup completed successfully!"

echo "Backup location:"
echo "$BACKUP_DIR/$BACKUP_FILE"

