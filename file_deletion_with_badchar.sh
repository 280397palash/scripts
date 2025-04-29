# script to delete file names in current directory containing bad characters

#!/bin/bash
# Simple one-liner using find
find . -maxdepth 1 -type f -name '*[<>:"\\|?*]*' -delete
