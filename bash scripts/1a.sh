#!/usr/bin/bash
echo "Hello, $USER"
#or
echo "Hello, $(whoami)"
#or
echo "Hello, $(who | awk '{print $1}')"
