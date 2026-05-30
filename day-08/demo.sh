#!/bin/bash

# Day 08 - Injecting ConfigMaps as env vars vs volume mounts

# Step 1: View the ConfigMap YAML
cat configmap.yaml

# Step 2: Create the ConfigMap
kubectl apply -f configmap.yaml

# Step 3: View the volume mount Pod YAML
cat configmap-volume-pod.yaml

# Step 4: Create the Pod
# Kubernetes mounts the ConfigMap as files inside the container
kubectl apply -f configmap-volume-pod.yaml

# Step 5: Check Pod is running
kubectl get pods

# Step 6: List files inside /etc/config
# One file per ConfigMap key
kubectl exec -it my-configmap-vol-pod -- ls /etc/config

# Step 7: Read the APP_NAME file
# Value is read directly from the mounted file
kubectl exec -it my-configmap-vol-pod -- cat /etc/config/APP_NAME

# Step 8: Read the APP_ENV file
kubectl exec -it my-configmap-vol-pod -- cat /etc/config/APP_ENV
