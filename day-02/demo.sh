#!/bin/bash

# Day 02 - Writing your first Pod YAML

# Step 1: View the Pod YAML file field by field
cat pod.yaml

# Step 2: Apply the YAML file to create the Pod
kubectl apply -f pod.yaml

# Step 3: Verify the Pod is running
kubectl get pods
