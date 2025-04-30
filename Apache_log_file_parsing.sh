<<COMMENT
Given the following sample Apache log file format:
66.249.64.13 - - [18/Sep/2004:11:07:48 +1000] "GET / HTTP/1.0" 200 468 "-" "Googlebot/2.1"
Using the standard command-line tools, parse the files to produce the following:
- The top 10 IPs making the most requests, diplaying the IP address and the number of requests.
- Percentage of successful/un-successful requests.
- The total number of requests made every minute in the time period covered.
COMMENT

#!/bin/bash
#A1.
awk '{print $1}' access.log | sort | uniq -c | sort -nr | head -n 10

#A2.
awk '
{
    total++
    if ($9 >= 200 && $9 < 400) success++
}
END {
    printf "Successful requests: %.2f%%\n", (success/total)*100
    printf "Unsuccessful requests: %.2f%%\n", ((total-success)/total)*100
}' access.log

#A3.
awk -v fmt="%d/%b/%Y:%H:%M" '{
    split($4, a, "[")
    gsub(/]/, "", a[2])
    timestamp = a[2]
    count[timestamp]++
}
END {
    for (min in count) {
        print min, count[min]
    }
}' access.log | sort
