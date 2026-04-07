#!/bin/bash
grep 'error' syslog_test.log
echo "count is" 
grep -c 'error' syslog_test.log
echo "END============================="
