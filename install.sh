#!/bin/bash

# 1. Ensures super-user execution
# 2. Applies write protection to config files
# 3. Copies .nix files to /etc/nixos

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "This script needs to be run as root to write to /etc/nixos"
  exit 1
fi

# Source and destination directories
SOURCE_DIR="$(pwd)/nix"
DEST_DIR="/etc/nixos"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Error: Source directory $SOURCE_DIR does not exist"
  exit 1
fi

# Check if destination directory exists
if [ ! -d "$DEST_DIR" ]; then
  echo "Error: Destination directory $DEST_DIR does not exist"
  exit 1
fi

# Apply write protection to .nix files in source directory
echo "Applying write protection to .nix files in $SOURCE_DIR"
find "$SOURCE_DIR" -type f -name "*.nix" -exec chmod 444 {} \;

# Copy .nix files to destination (overwriting if necessary)
echo "Copying .nix files from $SOURCE_DIR to $DEST_DIR"
find "$SOURCE_DIR" -type f -name "*.nix" | while read -r file; do
  filename=$(basename "$file")
  cp -fv "$file" "$DEST_DIR/$filename"
done

echo "Operation completed successfully"
