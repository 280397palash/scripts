# script to print current date and time.

#! /bin/bash
year= ‘date +%Y’
month=’date  +%m’
day=’date +%d’
hour=’date +% H’
minute=’date +%M’
second=’date +%S’
echo ‘date’
echo  “current date is :$day-$month=$year”
echo  “current time is :$hour:$minute:$second”
