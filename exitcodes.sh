#!/bin/bash

package=htop

sudo apt install $package >> package_install_results.log

if [ $? -eq 0 ]
then 
    echo "The installation of $package was successful."
    echo "The new command is available here:"
    which $package
else
    echo "$package failed to install." >> package_install_failure.log
fi


directory=/etc

if [ -d $directory ]
then
    echo "The directory $directory exists."
    exit 0
else 
    echo "The directory $directory doesn't exist."
    exit 199
fi

echo "The exit code is: $?."

