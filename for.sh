#!/bin/bash

for num in {1..10}
do 
    echo $num
    sleep .1
done

echo "This is outside of the for loop."

for file in logfiles/*.log
do
    tar -czvf $file.tar.tz $file
done
