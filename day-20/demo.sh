#!/bin/bash

# Day 20 - Volumes — emptyDir and hostPath

# --- emptyDir Demo ---

# Step 1: View the emptyDir Pod YAML
cat emptydir-pod.yaml

# Step 2: Create the Pod
kubectl apply -f emptydir-pod.yaml

# Step 3: Check both containers are running — READY shows 2/2
kubectl get pods

# Step 4: Read the file from inside the reader container
# The writer container wrote this file to the shared emptyDir volume
kubectl exec -it my-volume-pod -c reader -- cat /data/message.txt

# Wait 5 seconds and read again — message has a new timestamp
sleep 5
kubectl exec -it my-volume-pod -c reader -- cat /data/message.txt

# --- hostPath Demo ---

# Step 5: View the hostPath Pod YAML
cat hostpath-pod.yaml

# Step 6: Create the hostPath Pod
kubectl apply -f hostpath-pod.yaml

# Step 7: List files from the node's /tmp directory
# These are actual files from the node's filesystem
kubectl exec -it my-hostpath-pod -- ls /host-data
