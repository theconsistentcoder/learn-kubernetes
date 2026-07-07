#!/bin/bash

# Day 33 - Reading logs like a pro

# Step 1: Basic log retrieval from main container
kubectl logs my-probes-pod

# Step 2: Specify container in a multi-container Pod
kubectl logs my-probes-pod -c nginx-container

# Step 3: Logs from previously crashed container
# Use this when container restarted — logs from crash are gone without --previous
kubectl logs my-probes-pod --previous

# Step 4: Show only last 20 lines
kubectl logs my-probes-pod --tail=20

# Step 5: Show logs from last 5 minutes
# Accepts s (seconds), m (minutes), h (hours)
kubectl logs my-probes-pod --since=5m

# Step 6: Stream logs live in real time
# Press Ctrl+C to stop
kubectl logs my-probes-pod -f

# Step 7: Logs from ALL Pods matching a label — reads all replicas at once
kubectl logs -l app=my-app --all-containers=true
