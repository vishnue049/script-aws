#!/bin/bash
# set -x
STR1=$1
STR2=$2
if [ $# -lt 2 ]; then
    echo "You are suppose to give two arguments"
else
    if [ -z $STR1 -o -z $STR2 ]; then
        echo "One of the param is zero"
    elif [ $STR1 = 'ZERO' -o $STR2 = 'ZERO' ]; then
        echo "You have given both zero"
    else
        if [ "${STR1}" = "${STR2}" ]; then
            echo "Both are same"
        else
            echo "Both are diff"
        fi
    fi
fi


#!/bin/bash
FOLDERNAME='temp'
FILENAME='tempfile'
