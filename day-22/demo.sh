#!/bin/bash

# Day 22 - StorageClasses

# Step 1: List available StorageClasses
# minikube has a default one called "standard"
kubectl get storageclass

# Step 2: View the PVC YAML that references the StorageClass
cat storageclass-pvc.yaml

# Step 3: Create the PVC
# No PV exists yet — watch what happens
kubectl apply -f storageclass-pvc.yaml

# Step 4: Check PVC and PV status
# PVC shows Bound, and a PV was automatically created
kubectl get pvc
kubectl get pv

# Step 5: View and create the Pod that mounts the PVC
cat storageclass-pod.yaml
kubectl apply -f storageclass-pod.yaml

# Step 6: Confirm Pod is running
kubectl get pods

# Step 7: Write and read data to prove dynamic storage works
kubectl exec -it my-storageclass-pod -- sh -c "echo 'dynamic storage works' > /storage/test.txt && cat /storage/test.txt"
