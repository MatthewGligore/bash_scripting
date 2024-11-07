#!/bin/bash

mynum=200

if [ $mynum -eq 200 ]
then
  echo "The condition is true."
else
  echo "The variable does not equal 200."
fi




if [ -f ~/myfile ]
then
   echo "The file exists."
else
   echo "The file does not exist."
fi



command=htop

if command -v $command
then 
   echo "$command is available, let's run it..."
else 
   echo "$command is NOT available, installing it..."
   sudo apt update && sudo apt install -y $command
fi

$command
