#!/bin/bash
echo "Start"
awk 'tolower($0)~/failed password/{split($3,time,":");hour[time[1]]++}END{max=0;top="";for (hr in hour){if (hour[hr]>max){max = hour[hr];top=hr}}print "Hour",top}' syslog_test.log
echo "End"
