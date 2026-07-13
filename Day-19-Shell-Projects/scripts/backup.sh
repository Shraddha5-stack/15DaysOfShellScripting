#!/bin/bash


SOURCE=$1
DESTINATION=$2


if [ -z "$SOURCE" ] || [ -z "$DESTINATION" ]; then
    echo "Usage: $0 <source_directory> <backup_destination>"
    exit 1
fi


if [ ! -d "$SOURCE" ]; then
    echo "Error: Source directory does not exist"
    exit 1
fi


mkdir -p "$DESTINATION"


DATE=$(date +%Y-%m-%d)

ARCHIVE="backup-$DATE.tar.gz"


tar -czf "$DESTINATION/$ARCHIVE" "$SOURCE"


if [ $? -eq 0 ]; then

    SIZE=$(du -h "$DESTINATION/$ARCHIVE" | cut -f1)

    echo "Backup created successfully"
    echo "Archive Name: $ARCHIVE"
    echo "Archive Size: $SIZE"

else

    echo "Backup failed"
    exit 1

fi


find "$DESTINATION" -name "*.tar.gz" -mtime +14 -delete


echo "Old backups removed"
