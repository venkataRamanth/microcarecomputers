#!/bin/bash
echo "installing git if its a linux machine"
echo "this is s $(uname) machine"
if [ "$(uname)"=="Linux" ];
then
     echo "this is a linux machine, command satisfied"
     sudo yum install git -y
elif [ "$(uname)"=="other" ];
then
    echo "this is not linux machine, command fail"
    
else
    echo "do nothing"
fi
