#!/bin/bash

# Day 16 - Jobs — run-to-completion workloads

# Step 1: View the Job YAML
cat backup-job.yaml

# Step 2: Create the Job
kubectl apply -f backup-job.yaml

# Step 3: Watch COMPLETIONS go from 0/1 to 1/1
kubectl get jobs

# Step 4: Check Pod status
# STATUS changes from Running to Completed
kubectl get pods

# Step 5: View the simulated backup logs
kubectl logs job/db-backup-job

# Cleanup — Jobs and their Pods are not auto-deleted by default
# kubectl delete job db-backup-job
