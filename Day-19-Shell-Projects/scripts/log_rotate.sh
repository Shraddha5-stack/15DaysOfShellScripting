#!/bin/bash

LOG_DIR=$1

if [ -z "$LOG_DIR" ]; then
    echo "Usage: $0 <log_directory>"
    exit 1
fi


if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory does not exist"
    exit 1
fi


compressed_count=0
deleted_count=0


echo "Starting log rotation..."


for file in $(find "$LOG_DIR" -name "*.log" -mtime +7)
do
    gzip "$file"
    ((compressed_count++))
done


for file in $(find "$LOG_DIR" -name "*.gz" -mtime +30)
do
    rm "$file"
    ((deleted_count++))
done


echo "Files compressed: $compressed_count"
echo "Files deleted: $deleted_count"

exit 0
