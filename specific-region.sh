#!/bin/bash
REGION=$@
# set -x
if [ $# -gt 0 ]; then
    echo $REGION
     echo "------------------"
    for LIST in $REGION; do
        echo "Listing VPC Info for Region $LIST"
       
        aws ec2 describe-vpcs --region $LIST | jq ".Vpcs[].VpcId" | tr -d '"' || exit 127
        if [ $? -eq 0 ]; then
            echo "VALID REGION"
            
        else
            echo "INVALID REGION"
        fi
        echo "------------------"
        sleep 1
    done
else
    echo " Number of $# arguments..!! Please provide atleast one argument"
fi

# read -p "Enter the Region Name:" REGION
# aws ec2 describe-vpcs --region $REGION | jq ".Vpcs[].VpcId" | tr -d '"'