#!/bin/bash
if [ -f /var/log/syslog ]; then
	echo "Found syslog"
	wc --lines /var/log/syslog
fi
