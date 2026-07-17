#!/bin/bash

echo "Starting sleep process..."

sleep 300 &
PID=$!

echo "Sleep process started with PID: $PID"

sleep 5

echo "Stopping process..."

kill $PID

echo "Process stopped"
