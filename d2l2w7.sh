#!/bin/bash
echo "Log Start"
tail -f syslog_test.log | awk 'tolower($0)~/failed password/{print "HACK ATTEMPT"}'
