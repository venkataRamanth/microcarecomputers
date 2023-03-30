#!/bin/bash
clear
echo ".................calculator..............."
read_input()
{
read -p "enter first num: " num1
read -p "enter second num: " num2
}
echo -e "[a]addition\n[b]subtraction\n[c]multiplication\n[d]division\n"
read -p "Enter your arthemetic operation a (or) b (or) c (or) d: " choice
case $choice in
  [aA])
      read_input
      result=$((num1+num2))
      echo "result is $result"
      ;;
   [bB])
      read_input
      result=$((num1-num2))
      echo "result is $result"
      ;;
   [cC])
      read_input
      result=$((num1*num2))
      echo "result is $result"
      ;;
   [dD])
      read_input
      result=$((num1/num2))
      echo "result is $result"
      ;;
   *)
      echo "invalid choice"
esac
