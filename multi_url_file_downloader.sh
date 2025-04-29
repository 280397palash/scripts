# script that downloads files from multiple URLs in parallel and reports failures.

#!/bin/bash

wget -q --show-progress --tries=3 -i urls.txt -P ./downloads/ &
