# script to clean up log files which should proactively take back-up of log files for the past X days with find command and delete the log files which are older than X days by including some loops to traverse the *.log files

#!/bin/bash

# Set the number of days to keep log files
KEEP_DAYS=7

# Set the directory where the log files are located
LOG_DIR="/path/to/log/files"

# Create the backup directory
BACKUP_DIR="${LOG_DIR}/backup"
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir "$BACKUP_DIR"
fi

# Take backup of log files for the past X days
find "$LOG_DIR" -type f -name "*.log" -mtime -"$KEEP_DAYS" -exec cp {} "$BACKUP_DIR" \;

# Delete log files older than X days
find "$LOG_DIR" -type f -name "*.log" -mtime ++"$KEEP_DAYS" -exec rm {} \;

echo "Log file cleanup completed”
