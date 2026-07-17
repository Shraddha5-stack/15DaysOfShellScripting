#!/bin/bash

echo "Checking SSH service status..."

systemctl status ssh --no-pager
