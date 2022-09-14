#!/usr/bin/bash
find $1 -executable -type f -printf '%f\n'
