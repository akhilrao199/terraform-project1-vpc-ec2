#!/bin/bash

# Set the target directory (default: current directory)
TARGET_DIR="${1:-.}"

# Divider line
DIVIDER="--------------------------------------------------"

# Loop through each file in the directory
for file in "$TARGET_DIR"/*; do
    if [[ -f "$file" ]]; then
        echo -e "\n📄 File: $(basename "$file")"
        echo "$DIVIDER"
        cat "$file"
        echo -e "\n$DIVIDER"
    fi
done
