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
[ec2-user@ip-172-31-36-109 ~]$ cat calculator.sh
#!/bin/bash
clear
echo ".................calculator..............."
echo -e "[a]addition\n[b]subtraction\n[c]multiplication\n[d]division\n"
read -p "Enter your arthemetic operation a (or) b (or) c (or) d: " choice
case $choice in
  [aA])
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$((num1+num2))
      echo "result is $result"
      ;;
   [bB])
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$((num1-num2))
      echo "result is $result"
      ;;
   [cC])
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$((num1*num2))
      echo "result is $result"
      ;;
   [dD])
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$((num1/num2))
      echo "result is $result"
      ;;
   *)
      echo "invalid choice"
esac
