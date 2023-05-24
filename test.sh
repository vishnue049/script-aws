#!/bin/bash
YOB=$1
AGE=$(expr 2023 - $YOB)
echo "Your age is $AGE"
if [ $AGE -lt 18 ]; then
    echo "Not allowed"
elif [ $AGE -gt 18 -a $AGE -lt 60 ]; then
    echo "allowed"
else
    echo "above 60, consume at user risk"
fi
