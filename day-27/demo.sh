#!/bin/bash

# Day 27 - Image security and pulling from private registries

# Step 1: Create a docker-registry Secret with credentials
# Replace placeholder values with your actual registry details
kubectl create secret docker-registry my-registry-secret \
  --docker-server=registry.example.com \
  --docker-username=my-username \
  --docker-password=my-password \
  --docker-email=myemail@example.com

# Step 2: Verify the Secret was created
kubectl get secret my-registry-secret

# Step 3: Describe the Secret
# Type shows kubernetes.io/dockerconfigjson
# Actual credentials are base64 encoded and hidden
kubectl describe secret my-registry-secret

# Step 4: View the Pod YAML
cat private-image-pod.yaml

# Step 5: Apply the Pod
kubectl apply -f private-image-pod.yaml

# Step 6: Check Pod status
# Should show Running if credentials are correct
kubectl get pods

# Optional: Attach imagePullSecrets to a ServiceAccount
# so all Pods using that ServiceAccount get credentials automatically
# kubectl patch serviceaccount default \
#   -p '{"imagePullSecrets": [{"name": "my-registry-secret"}]}'

# Cleanup
# kubectl delete secret my-registry-secret
# kubectl delete pod my-private-pod
