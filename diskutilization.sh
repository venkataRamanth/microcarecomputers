#!/bin/bash
echo "this is a function test"
disk_utilization()
{
disk=`df -h`
echo "disk utilization is $disk"
}
 if [[ $? -eq 0 ]];
 then
         echo "this is disk usage report"
         disk_utilization
else
         echo "disk has some issue"
 fi
