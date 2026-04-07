#!/bin/bash
awk 'tolower($0)~/failed/{x=$11;count[x]++}END{for (s in count)print count[s],s}' syslog_test.log | sort -rn
