#!/bin/bash
# Author: Khanak
# Course: B.Tech CSE (AI & ML)
# Roll Number: 2601730302
# Script: Folder Backup Automation

if [ $# -eq 0 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE="$1"

if [ ! -d "$SOURCE" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

if tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"; then
    SIZE=$(du -h "$BACKUP_FILE" | cut -f1)

    echo "Backup created successfully!"
    echo "Backup File: $BACKUP_FILE"
    echo "Backup Size: $SIZE"

    echo "$TIMESTAMP - SUCCESS - $BACKUP_FILE - $SIZE" >> "$BACKUP_DIR/backup.log"
else
    echo "Error: Backup failed."
    echo "$TIMESTAMP - FAILED - $SOURCE" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
#!/bin/bash

# Author: Khanak Ahuja
# Roll Number: 2601730302
# Purpose: Create a compressed folder backup

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

# Check if the folder exists
if [ ! -d "$1" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

# Create backup directory
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

# Generate timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Create backup filename
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create compressed backup
if tar -czf "$BACKUP_FILE" -C "$(dirname "$1")" "$(basename "$1")"; then

    SIZE=$(du -h "$BACKUP_FILE" | cut -f1)

    echo "Backup created successfully!"
    echo "Backup filename: $BACKUP_FILE"
    echo "Backup size: $SIZE"

    echo "$TIMESTAMP - SUCCESS - $BACKUP_FILE - Size: $SIZE" >> "$BACKUP_DIR/backup.log"

else
    echo "Error: Backup creation failed."
    echo "$TIMESTAMP - FAILED - $1" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
