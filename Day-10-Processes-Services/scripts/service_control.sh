#!/bin/bash

SERVICE="ssh"

echo "Checking $SERVICE service..."

systemctl is-active --quiet $SERVICE

if [ $? -eq 0 ]
then
    echo "$SERVICE is running"
else
    echo "$SERVICE is not running"
fi

echo "Service status:"
systemctl status $SERVICE --no-pager
