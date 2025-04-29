# command to detect which files are scripts in a directory.
#!/bin/bash

find . -type f -name "*.sh" -o -name "*.py" -o -name "*.pl" -o -name "*.rb" -o -name "*.js" -o -name "*.php"
