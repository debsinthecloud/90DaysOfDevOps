#!/bin/bash

filename="missingfile.txt"

if ! cat "$filename" 2> /dev/null; then
  echo "❌ Could not open '$filename'. Please make sure the file exists and you have read permissions."
fi
