# 17- Bash script to get current date, time, username and current working directory.

#!/bin/bash
echo "System Information"
echo "============================================"
echo "Date: $(date '+%Y-%m-%d')"
echo "Time: $(date '+%H:%M:%S')"
echo "Username: $USER"
echo "Current Directory: $(pwd)"
