#!/bin/bash

# Day 13 - Rollback a deployment

# Step 1: Create the Deployment with nginx 1.19
kubectl apply -f deployment.yaml

# Step 2: Check all 3 Pods are running
kubectl get pods

# Step 3: Trigger a bad deployment — image does not exist
kubectl set image deployment/my-deployment nginx-container=nginx:broken-version

# Step 4: Watch Pods crashing
# STATUS will show ImagePullBackOff or ErrImagePull
kubectl get pods

# Step 5: Check rollout history
# Revision 1 = working version
# Revision 2 = broken version
kubectl rollout history deployment/my-deployment

# Step 6: Rollback to previous revision instantly
kubectl rollout undo deployment/my-deployment

# Step 7: Check Pods are back to Running
kubectl get pods

# Step 8: To rollback to a specific revision
# kubectl rollout undo deployment/my-deployment --to-revision=1
