#!/bin/bash
for folder in $(find -type d);
do
 echo "the folder is $folder"
if [ -d test ];
then
 echo "this folder exists"
 echo "removing the folder"
 rm -rf test
else
 echo "foldr not exists"
fi
done
