#!/bin/bash

echo "Original text:"
cat scripts/sample.txt

echo
echo "Convert lowercase to UPPERCASE:"
cat scripts/sample.txt | tr 'a-z' 'A-Z'

echo
echo "Replace 'a' with '@':"
cat scripts/sample.txt | tr 'a' '@'
