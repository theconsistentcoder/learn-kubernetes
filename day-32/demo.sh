#!/bin/bash

# Day 32 - Liveness vs Readiness vs Startup probes

# Step 1: View the Pod YAML with all three probes
cat probes-pod.yaml

# Step 2: Create the Pod
kubectl apply -f probes-pod.yaml

# Step 3: Check Pod is running
kubectl get pods

# Step 4: Describe the Pod — look at Liveness, Readiness and Startup sections
kubectl describe pod my-probes-pod

# Step 5: Watch probe status live
kubectl get pods --watch
