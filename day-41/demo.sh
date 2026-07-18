#!/bin/bash

# Day 41 - Resource optimization — HPA and VPA basics

# Step 1: Enable Metrics Server in minikube
minikube addons enable metrics-server

# Step 2: Create the Deployment
kubectl apply -f deployment.yaml
kubectl get pods

# Step 3: Create the HPA
kubectl apply -f hpa.yaml

# Step 4: Check HPA status
# TARGETS shows current CPU vs target threshold
# MINPODS and MAXPODS show scaling boundaries
# REPLICAS shows current count
kubectl get hpa

# Step 5: Describe HPA for full details and scaling events
kubectl describe hpa my-hpa

# Step 6: Check real-time resource usage
kubectl top pods
kubectl top nodes

# Step 7: Watch HPA scale in real time
kubectl get hpa --watch
