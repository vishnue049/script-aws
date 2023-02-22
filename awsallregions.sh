#!/bin/bash
REGIONS=$(aws ec2 describe-regions | jq ".Regions[].RegionName" | tr -d '"')
for LIST in $REGIONS; do
    echo "Getting VPC info from all regions $LIST"
    aws ec2 describe-vpcs --region $LIST | jq ".Vpcs[].VpcId" | tr -d '"'
    echo "-------------------"
    sleep 1
done
echo "Execution completed..."
