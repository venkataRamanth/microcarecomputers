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
