#!/bin/bash

echo "Complete file statistics:"
wc scripts/sample.txt

echo
echo "Number of lines:"
wc -l scripts/sample.txt

echo
echo "Number of words:"
wc -w scripts/sample.txt

echo
echo "Number of characters:"
wc -m scripts/sample.txt
