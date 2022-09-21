#!/usr/bin/bash
count=$(wc -lw < $1)
echo "$count" | awk '{print "lines:"$1"\nwords:"$2}'
