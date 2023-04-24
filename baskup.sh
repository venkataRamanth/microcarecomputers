#!/bin/bash
echo "shell script for to do back up of directories"

backup_dirs=("/etc" "/home")
dest_dir="/root/backup_today"
mkdir -P $dest_dir
backup_date=$(date +%b-%d-%y)

echo "starting backing-up of : ${backup_dirs[@]}"
 for i in "${backup_dirs[@]}"; do
sudo tar -pczf /tmp/$i-$backup_date.tar.gz $i
if [ $? -eq 0 ]; then
echo "$i backup successfull"
else
echo "backup failed"
fi
cp /tmp/$i-$backup_date.tar.gz $dest_dir
if [ $? -eq 0 ]; then
echo "$i transfer success"
else
echo "transfer failed"
fi
done
sudo rm /tmp/*.gz
echo "bachup done"
