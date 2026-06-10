#!/bin/bash

# Day 11 - Deployments vs ReplicaSets

# Step 1: View the Deployment YAML
cat deployment.yaml

# Step 2: Create the Deployment
kubectl apply -f deployment.yaml

# Step 3: Check the Deployment
# READY 3/3 means all 3 replicas are running
kubectl get deployments

# Step 4: Check the ReplicaSet
# Automatically created by the Deployment — you never created this
kubectl get replicasets

# Step 5: Check the Pods
# 3 Pods created by the ReplicaSet
# One Deployment -> One ReplicaSet -> Three Pods
kubectl get pods
