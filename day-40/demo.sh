#!/bin/bash

# Day 40 - DaemonSets — one Pod per node explained

# Step 1: View the DaemonSet YAML
cat daemonset.yaml

# Step 2: Create the DaemonSet
kubectl apply -f daemonset.yaml

# Step 3: Check DaemonSet status
# DESIRED = number of nodes
# CURRENT = Pods currently running
# READY = healthy Pods
kubectl get daemonsets

# Step 4: Check Pods with node info
# -o wide shows the NODE column — one Pod per node
kubectl get pods -o wide

# Step 5: Describe the DaemonSet
# Look at Events — Kubernetes scheduled Pod to every node automatically
kubectl describe daemonset my-log-collector

# Step 6: View log collector logs
kubectl logs -l app=log-collector
