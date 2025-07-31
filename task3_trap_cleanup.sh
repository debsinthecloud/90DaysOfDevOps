#!/bin/bash

temp_file="tempfile.txt"

# Cleanup function
cleanup() {
  echo "⚠️ Script interrupted. Cleaning up..."
  rm -f "$temp_file"
  echo "✅ Temporary file deleted."
}

# Trap on EXIT, INT (Ctrl+C), or TERM
trap cleanup EXIT INT TERM

# Simulate work
touch "$temp_file"
echo "Temporary file created: $temp_file"
sleep 10  # simulate processing
echo "Done."
