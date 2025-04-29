# script that reads a file (file1.txt)  and look for number of occurrences in file2.txt.zip
#!/bin/bash

while read -r word; do                         # Reads each line from file1.txt into variable 'word'
    echo -n "'$word' appears "                 # Prints the word with formatting (no newline)
    zcat file2.txt.zip |                      # Reads the compressed file without extracting
    grep -o "$word" |                         # Finds all occurrences of the word
    wc -l                                     # Counts the number of lines (occurrences)
done < file1.txt                              # Input redirection from file1.txt
