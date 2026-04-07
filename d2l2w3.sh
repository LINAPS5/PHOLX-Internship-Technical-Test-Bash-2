#!/bin/bash
awk 'tolower($0)~/error/{x=$5;sub(/\[.*\]:/,"",x);count[x]++}END{for (s in count)print count[s],s}' syslog_test.log
