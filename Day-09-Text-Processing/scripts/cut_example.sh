#!/bin/bash

echo "Displaying names only:"
cut -d ":" -f1 scripts/users.txt

echo
echo "Displaying roles only:"
cut -d ":" -f2 scripts/users.txt
