#!/bin/bash
awk -F: '$7=="/bin/bash" {print "Username: " $1 "\tHome Directory: " $6}' /etc/passwd
