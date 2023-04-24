#! /bin/bash
echo "chech disk usage in linux machine"
disk_usage='df -h|grep "/dev/xvda3" |awk '{print $5}' |cut -d '%' -f 1 '
echo "$disk_usage % filled"
if [ $disk_usage -gt 20 ];
then
echo "disk over loaded"
else
echo "disk free"
fi
