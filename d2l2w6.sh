#!/bin/bash
awk 'tolower($0)~/failed/ {ip[$11]++}END{for (i in ip);if(ip[i]>3);print "ALERT:",i}' syslog_test.log | sort -rn
