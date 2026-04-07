#!/bin/bash
echo "<--"
awk 'tolower($0)~/wp-login|admin|phpmyadmin/{print $1,$5,$6,$7}' /var/log/nginx/acces10.log 
echo "-->"
