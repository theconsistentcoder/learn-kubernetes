#!/bin/bash

# Day 15 - Canary deployments

# Step 1: View both Deployment YAMLs
cat stable-deployment.yaml
cat canary-deployment.yaml

# Step 2: View the Service YAML
# Selector only matches app: my-app — routes to both stable and canary
cat service.yaml

# Step 3: Create both Deployments and the Service
kubectl apply -f stable-deployment.yaml
kubectl apply -f canary-deployment.yaml
kubectl apply -f service.yaml

# Step 4: Check Pods
# 9 stable Pods + 1 canary Pod = roughly 90-10 traffic split
kubectl get pods

# Step 5: Shift traffic — increase canary, decrease stable
# Now roughly 50-50 split
kubectl scale deployment canary-deployment --replicas=5
kubectl scale deployment stable-deployment --replicas=5

# Step 6: Confirm replica counts
kubectl get deployments

# To fully promote canary (100% traffic):
# kubectl scale deployment canary-deployment --replicas=10
# kubectl scale deployment stable-deployment --replicas=0

# To rollback canary (something broke):
# kubectl scale deployment canary-deployment --replicas=0
# kubectl scale deployment stable-deployment --replicas=10
