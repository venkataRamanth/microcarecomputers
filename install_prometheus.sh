#!/bin/bash
echo "download promotheus appliction if not there in file system"
if [ -e /home/ec2-user/prometheus-2.43.0.linux-amd64.tar.gz ];
  then
       echo "file already downloaded in file system"
   else
       echo "file not available in file system"
       wget https://github.com/prometheus/prometheus/releases/download/v2.43.0/prometheus-2.43.0.linux-amd64.tar.gz
       echo "file downloaded successfully"
fi

