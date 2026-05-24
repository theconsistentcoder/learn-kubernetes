#!/bin/bash

# Day 04 - Init Containers — run before your app starts

# Step 1: View the init container Pod YAML
cat init-container-pod.yaml

# Step 2: Create the Pod
kubectl apply -f init-container-pod.yaml

# Step 3: Check Pod status
# STATUS will show Init:0/1 — init container not yet completed
# Main app is waiting
kubectl get pods

# Step 4: Watch the Pod live
# Init container downloads config -> PodInitializing -> Running
kubectl get pods --watch
