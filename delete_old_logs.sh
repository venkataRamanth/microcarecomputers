#!/bin/bash
echo "delete old .log files 30 days old"
path="$1"
echo "deleting in $path"
find $path -mtime +30 -delete
echo "deleted successfully"
ls -al $path
