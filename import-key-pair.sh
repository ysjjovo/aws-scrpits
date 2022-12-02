#!/bin/bash
#./import-key-pair.sh cn-northwest-1 xxx ssh.pub
region=$1
name=$2
path=$3
aws --region $region ec2 import-key-pair \
    --key-name "$name" \
    --public-key-material "fileb://$path" > /dev/null
