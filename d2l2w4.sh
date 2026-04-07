#!/bin/bash
awk 'tolower($0)~/failed password/{print $11}' syslog_test.log | sort -u
