#!/bin/bash

# Day 35 - API deprecations and how to handle them

# Step 1: List all API versions currently supported by your cluster
kubectl api-versions

# Step 2: Filter for the apps group — check which versions are available
kubectl api-versions | grep apps

# Step 3: Verify the current apiVersion for Deployments
kubectl explain deployment

# Step 4: Drill down into specific fields
kubectl explain deployment.spec.template.spec.containers

# Step 5: Try applying the deprecated YAML — this will fail
cat deprecated-deployment.yaml
kubectl apply -f deprecated-deployment.yaml

# Step 6: Apply the updated YAML — this will succeed
cat updated-deployment.yaml
kubectl apply -f updated-deployment.yaml

# Step 7: Verify the Deployment is running
kubectl get deployments
