#!/bin/bash

# Day 34 - kubectl exec, describe, events — debug toolkit

# Step 1: Open an interactive shell inside the container
kubectl exec -it my-probes-pod -- sh

# Step 2: Once inside the container run these commands
# List all environment variables
# env | grep APP

# List files in a mounted ConfigMap
# ls /etc/config

# Read a specific config file
# cat /etc/config/APP_NAME

# Test network connectivity to another Service
# wget -qO- http://app1-service

# Exit the container shell
# exit

# Step 3: Describe the Pod — full state, config, and events
kubectl describe pod my-probes-pod

# Step 4: Show all cluster events sorted by most recent first
kubectl get events --sort-by='.lastTimestamp'

# Step 5: Watch events live during an incident
kubectl get events --watch --sort-by='.lastTimestamp'

# Step 6: Filter events for a specific Pod
kubectl get events --field-selector involvedObject.name=my-probes-pod
