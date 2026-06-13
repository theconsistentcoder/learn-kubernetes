#!/bin/bash

# Day 14 - Blue-Green deployments

# Step 1: View both Deployment YAMLs
cat blue-deployment.yaml
cat green-deployment.yaml

# Step 2: View the Service YAML
# Selector currently points to version: blue
cat service.yaml

# Step 3: Create both Deployments and the Service
kubectl apply -f blue-deployment.yaml
kubectl apply -f green-deployment.yaml
kubectl apply -f service.yaml

# Step 4: Check both Deployments are running
# Blue is live. Green is ready and waiting — already healthy
kubectl get deployments
kubectl get pods

# Step 5: Switch traffic from blue to green
# This is just a label selector change — instant
kubectl patch service my-service -p '{"spec":{"selector":{"app":"my-app","version":"green"}}}'

# Step 6: Confirm the Service now points to green
kubectl get service my-service -o wide

# To rollback instantly — switch selector back to blue
# kubectl patch service my-service -p '{"spec":{"selector":{"app":"my-app","version":"blue"}}}'
