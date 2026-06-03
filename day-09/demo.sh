#!/bin/bash

# Day 09 - Resource requests and limits

# Step 1: View the Pod YAML with resource requests and limits
cat resource-pod.yaml

# Step 2: Create the Pod
kubectl apply -f resource-pod.yaml

# Step 3: Confirm Pod is running
kubectl get pods

# Step 4: Describe the Pod
# Look for Requests and Limits section
# Look for QoS Class at the bottom
kubectl describe pod my-resource-pod
