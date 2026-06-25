#!/bin/bash

# Day 25 - RBAC — Roles and RoleBindings explained

# Step 1: View the Role YAML
cat role.yaml

# Step 2: Create the Role
kubectl apply -f role.yaml

# Step 3: View the RoleBinding YAML
cat rolebinding.yaml

# Step 4: Create the RoleBinding
kubectl apply -f rolebinding.yaml

# Step 5: Verify Role and RoleBinding are created
kubectl get roles
kubectl get rolebindings

# Step 6: From inside the Pod call the Kubernetes API using the mounted token
# This proves the ServiceAccount now has permission to list Pods
kubectl exec -it my-sa-pod -- wget -qO- \
  --header="Authorization: Bearer $(cat /var/run/secrets/kubernetes.io/serviceaccount/token)" \
  https://kubernetes.default.svc/api/v1/namespaces/default/pods \
  --no-check-certificate

# Step 7: Describe the RoleBinding to see the full binding details
kubectl describe rolebinding pod-reader-binding
