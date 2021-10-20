#!/bin/bash

while read line; do
    for word in $line; do
        echo "Performing byte-size measurement on $word..."
        size=$(./perform-measurement.sh $word)
        if [ $size -lt 1 ]; then
            echo "...failure"
        else 
            echo "...successful"
            echo "course-number $size" >> $1
        fi
    done
done < $2