#!/bin/bash
REGIONS=$(aws ec2 describe-regions | jq ".Regions[].RegionName" | tr -d '"')
for LIST in $REGIONS; do
    VPCID=$(aws ec2 describe-vpcs --region $REGION | jq ".Vpcs[].VpcId" | tr -d '"')
    for VPC in $VPCID
    do
    CIDR=$(aws ec2 describe-vpcs ---vpc-ids $VPC --region $REGION | jq ".Vpcs[].CidrBlock" | tr -d '"')
    if [ $CIDR='10.1.0.0/16' || $CIDR='172.16.0.0/16' ]; then
        echo "$VPC in region $LIST is in valid range"
    else
        echo "Invalid range"
    fi
done
