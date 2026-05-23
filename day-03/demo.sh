#!/bin/bash

# Day 03 - Multi-container Pods — when and why

# Step 1: View the multi-container Pod YAML
cat multi-container-pod.yaml

# Step 2: Create the Pod
kubectl apply -f multi-container-pod.yaml

# Step 3: Check the Pod — READY column should show 2/2
# This means two containers are running inside one Pod
kubectl get pods

# Step 4: Exec into the busybox container inside my-pod
# -c busybox tells Kubernetes which container to go into
# wget -qO- localhost hits nginx on port 80 from inside busybox
# Both containers share the same IP so localhost works
kubectl exec -it my-pod -c busybox -- wget -qO- localhost
