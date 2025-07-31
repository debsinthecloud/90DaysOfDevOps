#!/bin/bash

mkdir my_directory

if [[ $? -ne 0 ]]; then
  echo "Failed to create directory 'my_directory'"
else
  echo "Directory 'my_directory' created successfully"
fi
