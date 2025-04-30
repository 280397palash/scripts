#!/bin/bash
for file in *.txt; do
    date_pattern=$(grep -o '[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}' "$file" | head -n 1)
    
    if [ ! -z "$date_pattern" ]; then
        new_name="notes_${date_pattern}.txt"
        if [ "$file" != "$new_name" ]; then
            mv "$file" "$new_name"
            echo "Renamed: $file -> $new_name"
        fi
    else
        echo "No date pattern found in: $file"
    fi
done
