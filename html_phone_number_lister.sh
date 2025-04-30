# Let's say you're on my team, and we have to identify the pages having probable U.S. phone numbers in them. We have 50,000 HTML files in a Unix directory tree, under a directory called "/website". We have 2 days to get a list of file paths to the editors. You need to give me a list of the .html files in this directory tree that appear to contain phone numbers in the following two formats: (xxx) xxx-xxxx and xxx-xxx-xxxx. How would you solve this problem?

#!/bin/bash

find /website -name "*.html" -type f -exec grep -l -E '(\([0-9]{3}\) [0-9]{3}-[0-9]{4}|[0-9]{3}-[0-9]{3}-[0-9]{4})' {} \; > phone_numbers.txt
