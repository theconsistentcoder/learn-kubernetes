#!/bin/bash

# Day 12 - Rolling updates — zero downtime deploys

# Step 1: View the Deployment YAML with rolling update strategy
cat deployment.yaml

# Step 2: Create the Deployment with nginx 1.19
kubectl apply -f deployment.yaml

# Step 3: Check all 3 Pods are running
kubectl get pods

# Step 4: Trigger a rolling update — update image to nginx 1.21
# This creates a new ReplicaSet and gradually replaces old Pods
kubectl set image deployment/my-deployment nginx-container=nginx:1.21

# Step 5: Watch the rolling update live
# See Pods being replaced one by one — zero downtime
kubectl rollout status deployment/my-deployment

# Step 6: Check ReplicaSets
# Old ReplicaSet scaled down to 0
# New ReplicaSet scaled up to 3
kubectl get replicasets
