#!/usr/bin/bash
cat "/etc/passwd" | grep "home" | awk -F':' '{print $1}'
cat "/etc/group"
