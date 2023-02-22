#this is shebang
#!bin/bash
echo "Ruuning azure gorup list in west2"
for RG in $(az group list | jq ".[].name"); do
    echo "The name of the RG is $RG"
    sleep 1
done

for azure in $(az group list | jq ".[].location"); do
    echo "Print the list location $azure"
    sleep 1
done

REGION='us-east-2'
echo "Ruuning AWS VPC Information list in $REGION"
for VPC in $(aws ec2 describe-vpcs --region $REGION | jq ".Vpcs[].VpcId" | tr -d '"'); do
    echo " The VPC is $VPC"
    sleep 1
done
echo "Executed Completed..."


echo "Ruuning AWS VPC Information list"
for VPC in $(aws ec2 describe-vpcs | jq ".Vpcs[].VpcId" | tr -d '"'); do
    echo " The VPC is $VPC"
    sleep 1
done
echo "Executed Completed..."


echo "Ruuning AWS VPC Information list in $REGION"
for VPC in $(aws ec2 describe-vpcs --region $REGION | jq ".Vpcs[].VpcId" | tr -d '"'); do
    echo " The VPC is $VPC"
    sleep 1
done
echo "Executed Completed..."

echo "Running AWS VPC Information list in $REGIONS"
for FINEME in $(aws ec2 describe-vpcs --region $REGIONS | jq ".Vpcs[].VpcId" | tr -d '"'); do
    echo " The VPC is $FINEME"
    sleep 1
done
echo "Executed Completed..."

echo "Running script to get all vpc info in region US-EAST-1"
for VPC in $(aws ec2 describe-vpcs | jq ".Vpcs[].VpcId" | tr -d '"');
do
echo "The VPC id is $VPC"
sleep 1
done
