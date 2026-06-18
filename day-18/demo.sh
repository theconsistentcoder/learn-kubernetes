#!/bin/bash

# Day 18 - Node Selectors and Node Affinity

# Step 1: Label the node to simulate a GPU node
kubectl label nodes minikube gpu=true

# Step 2: View and apply the nodeSelector Pod
cat nodeselector-pod.yaml
kubectl apply -f nodeselector-pod.yaml

# Step 3: Confirm it landed on the labeled node
kubectl get pods -o wide

# Step 4: View and apply the node affinity Pod
cat affinity-pod.yaml
kubectl apply -f affinity-pod.yaml

# Step 5: Confirm it also landed on the labeled node
# Unlike nodeSelector, this Pod would still schedule
# even if no gpu=true node existed
kubectl get pods -o wide

# Cleanup label if needed
# kubectl label nodes minikube gpu-
