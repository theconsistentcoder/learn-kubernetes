#!/bin/bash

# Day 07 - Secrets — storing sensitive data

# Step 1: Encode a value to base64
# This is how you generate values to put in your Secret YAML
echo -n 'my-password' | base64

# Step 2: View the Secret YAML
cat secret.yaml

# Step 3: Create the Secret
# This registers our sensitive key-value pairs with Kubernetes
kubectl apply -f secret.yaml

# Step 4: View the Pod YAML
cat secret-pod.yaml

# Step 5: Create the Pod
# Kubernetes decodes the Secret values and injects as env vars
kubectl apply -f secret-pod.yaml

# Step 6: Check Pod is running
kubectl get pods

# Step 7: Go inside the container and verify Secret injection
# kubectl exec gets us inside the running container
# env lists all environment variables
# grep DB_PASSWORD filters our secret value
kubectl exec -it my-secret-pod -- env | grep DB_PASSWORD
