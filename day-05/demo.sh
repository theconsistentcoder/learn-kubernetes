#!/bin/bash

# Day 05 - Sidecar Containers — helpers that run alongside

# Step 1: View the sidecar Pod YAML
cat sidecar-pod.yaml

# Step 2: Create the Pod
kubectl apply -f sidecar-pod.yaml

# Step 3: Check Pod status — READY should show 2/2
kubectl get pods

# Step 4: Read config file from inside the main nginx container
# The sidecar has already written the config file to the shared volume
kubectl exec -it my-sidecar-pod -c nginx-container -- cat /etc/config/app.properties

# Step 5: Wait 10 seconds and read again — timestamp has changed
# Config refreshed. App never restarted.
sleep 10
kubectl exec -it my-sidecar-pod -c nginx-container -- cat /etc/config/app.properties
