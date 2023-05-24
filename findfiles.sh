#!/bin/bash
# set -xe
INPUTSIZE=$1
FOLDER=$2
ls -Rlh | grep -v total >file.txt
for LINE in $(cat file.txt | tr -s " " '-'); do
    SIZE=$(echo $LINE | cut -d '-' -f6 | tr -d 'M,K,B')
    if [ $SIZE -ge $INPUTSIZE ]; then
        FILENAME=$(echo $LINE | cut -d '-' -f10)
        echo "$FILENAME is greater than or equal 500k"
    else
        FILENAME=$(echo $LINE | cut -d '-' -f10)
        echo "$FILENAME is below than 500k"
    fi
    echo "------------"
done
