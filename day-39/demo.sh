#!/bin/bash

# Day 39 - StatefulSets vs Deployments — when state matters

# Step 1: Create the headless Service first
# StatefulSet requires a headless Service for stable DNS
cat headless-service.yaml
kubectl apply -f headless-service.yaml

# Step 2: Create the StatefulSet
cat statefulset.yaml
kubectl apply -f statefulset.yaml

# Step 3: Watch Pods start in order — 0 first, then 1, then 2
kubectl get pods --watch

# Step 4: Check Pod names — stable ordered names
kubectl get pods

# Step 5: Check PVCs — one per Pod
kubectl get pvc

# Step 6: Verify stable DNS — exec into Pod 0 and resolve Pod 1
kubectl exec -it my-statefulset-0 -- nslookup my-statefulset-1.my-service.default.svc.cluster.local

# Step 7: Delete Pod 0 — it will come back with the same name and same PVC
kubectl delete pod my-statefulset-0
kubectl get pods --watch
