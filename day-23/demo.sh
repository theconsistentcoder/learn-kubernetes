#!/bin/bash

# Day 23 - SecurityContext — Pod vs container level

# Step 1: View the SecurityContext Pod YAML
cat security-context-pod.yaml

# Step 2: Create the Pod
kubectl apply -f security-context-pod.yaml

# Step 3: Check Pod is running
kubectl get pods

# Step 4: Check which user the container is running as
# Should show uid=1000 — not root (uid=0)
kubectl exec -it my-security-pod -- id

# Step 5: Try to write to the container filesystem
# Should fail with "Read-only file system" error
# readOnlyRootFilesystem: true blocked it
kubectl exec -it my-security-pod -- sh -c "echo test > /tmp/test.txt"

# Step 6: Describe the Pod to see SecurityContext settings
kubectl describe pod my-security-pod
