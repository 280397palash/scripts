# a function that takes the path name (e.g. "/usr/../bin”) as input and return the name for the file/directory removing the special directories IF they are present.


#!/bin/bash

normalize_path() {
    # Use readlink -f to resolve the path
    # -f option follows all symlinks and canonicalize by removing all special directory references
    normalized_path=$(readlink -f "$1")
    echo "$normalized_path"
}

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <path>"
    exit 1
fi

# Call the function with the provided path
normalize_path "$1"
