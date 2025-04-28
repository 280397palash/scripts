# 1- Automating Log File Parsing

#!/bin/bash

# Set the log file path
log_file="/path/to/your/log/file.log"

# Set the output file path
output_file="parsed_log.txt"

# Set the search patterns you want to look for in the log file
search_patterns=("error" "warning" "critical")

# Iterate through the search patterns and write the matching lines to the output file
for pattern in "${search_patterns[@]}"; do
    echo "Searching for '$pattern' in the log file..."
    grep -i "$pattern" "$log_file" >> "$output_file"
    echo "Matching lines written to '$output_file'"
    echo
done

echo "Log file parsing complete."
