#!/bin/bash

# Day 36 - Debugging a broken Pod — real-world walkthrough

# --- Scenario 1: ImagePullBackOff ---

# Step 1: Apply the broken Pod with wrong image tag
kubectl apply -f broken-pod-1.yaml

# Step 2: Check status — should show ImagePullBackOff
kubectl get pods

# Step 3: Describe to find root cause
# Look at Events — Failed to pull image
kubectl describe pod my-broken-pod-1

# --- Scenario 2: CrashLoopBackOff ---

# Step 4: Apply the Pod with missing env var
kubectl apply -f broken-pod-2.yaml

# Step 5: Check status — should show CrashLoopBackOff
kubectl get pods

# Step 6: Check logs from crashed container
# --previous retrieves logs from the container before it restarted
kubectl logs my-broken-pod-2 --previous

# --- Scenario 3: Pending ---

# Step 7: Apply the Pod with excessive memory request
kubectl apply -f broken-pod-3.yaml

# Step 8: Check status — should show Pending
kubectl get pods

# Step 9: Describe to find root cause
# Look at Events — Insufficient memory
kubectl describe pod my-broken-pod-3

# Cleanup
kubectl delete pod my-broken-pod-1 my-broken-pod-2 my-broken-pod-3
