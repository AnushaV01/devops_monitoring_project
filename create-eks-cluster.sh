#!/bin/bash

# Create EKS Cluster using eksctl
eksctl create cluster \
  --name flask-cluster \
  --region us-east-1 \
  --nodegroup-name flask-nodes \
  --node-type t3.medium \
  --nodes 2 \
  --nodes-min 1 \
  --nodes-max 3 \
  --managed
