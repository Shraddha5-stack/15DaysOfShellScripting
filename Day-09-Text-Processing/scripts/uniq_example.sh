#!/bin/bash

echo "Original sorted list:"
sort scripts/sample.txt

echo
echo "Unique values:"
sort scripts/sample.txt | uniq
