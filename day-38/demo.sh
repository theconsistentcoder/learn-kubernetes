#!/bin/bash

# Day 38 - Helm — installing and upgrading a chart

# Step 1: Install nginx Chart from Bitnami repo
# Release name is my-nginx, custom value sets 2 replicas
helm install my-nginx bitnami/nginx --set replicaCount=2

# Step 2: List all installed Helm Releases
# Shows name, namespace, revision, status, Chart version
helm list

# Step 3: Check Pods created by Helm
kubectl get pods

# Step 4: Upgrade the Release — change replica count to 3
# Creates revision 2
helm upgrade my-nginx bitnami/nginx --set replicaCount=3

# Step 5: Check revision history
# Shows all revisions — install and upgrade
helm history my-nginx

# Step 6: Roll back to revision 1 — back to 2 replicas
helm rollback my-nginx 1

# Step 7: Verify rollback worked
kubectl get pods

# Step 8: Uninstall the Release — removes all resources Helm created
helm uninstall my-nginx

# Step 9: Verify everything is gone
kubectl get pods
