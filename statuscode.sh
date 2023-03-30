#!/bin/bash
echo "script to get HTTPS status code of curl command"
URL="https://github.com/venkataRamanth/maven-web-application.git"
#echo "%{http_code}"
response=$(curl -s -w "%{http_code}" $URL)

http1_code=$(tail -n1 <<< "$response") #to get the last line
content=$(sed '$ d' <<< "$response") #get all but last line which contains the status code

echo "#$http1_code"
if [ $http1_code == 200 ];
then
echo "request is working fine"
else
echo "send slack request request deniend"
fi
#echo "$content"

