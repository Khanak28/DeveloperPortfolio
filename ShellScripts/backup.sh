
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

