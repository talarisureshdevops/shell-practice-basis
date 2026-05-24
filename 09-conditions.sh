#!/bin/bash
NUMBER=$1

if [ $NUMBER -gt 20 ]; then
  echo " the given number: $NUMBER is greater than 20"
elif [ $NUMBER -eq 20 ]; then 
  echo " the given number: $NUMBER is equal to 20"
else
  echo " the given number: $NUMBER is less than 20"
fi

