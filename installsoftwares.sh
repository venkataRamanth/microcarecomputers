#!/bin/bash
echo "script to install softwares"
  if [[ $# -eq 0 ]]
    then
       echo "usage:please provide softwares names as argument"
       exit 1
  fi
  if [[ $(id -u) -ne 0 ]]
then
       echo "please run from root user"
       exit 2
   fi
 for softwares in $@
 do
 if which $softwares &> /dev/null
 then
   echo "installing softwares"
   yum install $softwares -y &> /dev/null
   if [[ $? -eq 0 ]]
    then
    echo "sucessufully installed"
   else
   echo "unable to install"
    fi
  fi
 done



