#!/bin/bash

echo "Checking Firefox process..."

pgrep firefox

if [ $? -eq 0 ]
then
    echo "Firefox is running"
else
    echo "Firefox is not running"
fi
