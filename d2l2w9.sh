#!/bin/bash
echo "<--"
awk '{count[$1]++}END{for(ip in count)print "Count:", count[ip]," | Ip:", ip}' /var/log/nginx/acces9.log | sort -rn
echo "-->"
