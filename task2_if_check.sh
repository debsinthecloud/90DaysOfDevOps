#!/bin/bash

dir_name="my_directory"

if mkdir "$dir_name"; then
  echo "✅ Directory '$dir_name' created."
  
  file_path="$dir_name/sample.txt"
  if touch "$file_path"; then
    echo "✅ File 'sample.txt' created inside '$dir_name'."
  else
    echo "❌ Failed to create file inside '$dir_name'."
  fi
else
  echo "❌ Could not create directory '$dir_name'."
fi
