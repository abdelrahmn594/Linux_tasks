#!/bin/bash
if [ $# -ne 2 ]; then
echo "Usage: $0 <filename> <directory>"
exit 1
fi
filename=$1
directory=$2
filepath="$directory/$filename"
if [ -f "$filepath" ]; then
echo "file exists"
echo "contents of $filename:"
cat "$filepath"
else echo "file does not exist"
fi
