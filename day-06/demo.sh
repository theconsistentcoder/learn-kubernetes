#!/bin/bash

# Day 06 - ConfigMaps — externalizing config

# Step 1: View the ConfigMap YAML
cat configmap.yaml

# Step 2: Create the ConfigMap
# This registers our config key-value pairs with Kubernetes
kubectl apply -f configmap.yaml

# Step 3: View the Pod YAML
cat configmap-pod.yaml

# Step 4: Create the Pod
# Kubernetes reads the ConfigMap and injects values as env vars
kubectl apply -f configmap-pod.yaml

# Step 5: Check Pod is running
kubectl get pods

# Step 6: Go inside the container and list env vars
# kubectl exec gets us inside the running container
# env lists all environment variables
# grep APP filters only our app config values
kubectl exec -it my-configmap-pod -- env | grep APP
