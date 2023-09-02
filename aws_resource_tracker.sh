#!/bin/bash

#list s3 bukets
echo "List of S3 buckets:"
aws s3 ls

#list lambda functions
echo "List of Lambda functions:"
aws lambda list-functions

# list ec2 instances
echo "List of EC2 instances:"
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId'

# IAM user
echo "List of IAM users:"
aws iam list-users | jq -r '.Users[].UserName'
