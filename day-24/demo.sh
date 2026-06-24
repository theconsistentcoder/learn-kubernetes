#!/bin/bash

# Day 24 - ServiceAccounts — what they are and why they matter

# Step 1: List existing ServiceAccounts
# default ServiceAccount exists in every namespace automatically
kubectl get serviceaccounts

# Step 2: View the custom ServiceAccount YAML
cat custom-serviceaccount.yaml

# Step 3: Create the custom ServiceAccount
kubectl apply -f custom-serviceaccount.yaml

# Step 4: Confirm both ServiceAccounts exist
kubectl get serviceaccounts

# Step 5: View the Pod YAML
cat serviceaccount-pod.yaml

# Step 6: Create the Pod using the custom ServiceAccount
kubectl apply -f serviceaccount-pod.yaml

# Step 7: Confirm Pod is running
kubectl get pods

# Step 8: Read the token mounted inside the container
# This is the JWT token Kubernetes mounted automatically
kubectl exec -it my-sa-pod -- cat /var/run/secrets/kubernetes.io/serviceaccount/token

# Step 9: List all mounted files — token, ca.crt, namespace
kubectl exec -it my-sa-pod -- ls /var/run/secrets/kubernetes.io/serviceaccount/
