#!/bin/bash

# Day 19 - Taints and Tolerations

# Step 1: Add a taint to the node
# Now this node rejects every Pod by default
kubectl taint nodes minikube dedicated=gpu:NoSchedule

# Step 2: View the Pod without toleration
cat no-toleration-pod.yaml

# Step 3: Apply the Pod without toleration
kubectl apply -f no-toleration-pod.yaml

# Step 4: Check status — Pod will be Pending forever
# The taint blocked it completely
kubectl get pods -o wide

# Step 5: View the Pod with matching toleration
cat toleration-pod.yaml

# Step 6: Apply the Pod with toleration
kubectl apply -f toleration-pod.yaml

# Step 7: Check status — this Pod is Running
# The toleration was its keycard past the taint
kubectl get pods -o wide

# Cleanup — remove the taint from the node
# kubectl taint nodes minikube dedicated=gpu:NoSchedule-
