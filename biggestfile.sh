#!/bin/bash
echo "programm to get top 10 files in file syatem passed via positional argument"
path="$1"
echo $path
du -ah $path | sort -hr | head -n 5 > /tmp/filesize.txt
echo "biggest files in $path are"
cat /tmp/filesize.txt

