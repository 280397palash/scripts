# script to list all of the differences between two directories

#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Usage: $0 directory1 directory2"
    exit 1
fi

echo "Differences between $1 and $2:"
echo "----------------------------------------"
diff -r "$1" "$2"
