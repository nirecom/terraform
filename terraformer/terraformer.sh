#!/bin/bash
terraformer import aws --resources=alb,ec2_instance,eip,iam,igw,nat,rds,route53,s3,sg,vpc,vpn_connection,vpn_gateway
