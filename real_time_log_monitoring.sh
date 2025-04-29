# There is an application log file that continuously updates. Here is a real-time log monitoring script that extracts errors and saves them to a separate file.

#!/bin/bash

tail -f application.log | grep --line-buffered -i "error" >> error_log.txt

