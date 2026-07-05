#!/bin/bash

# Day 31 - DNS in Kubernetes — how Pods find each other

# Step 1: Check CoreDNS is running in kube-system namespace
kubectl get pods -n kube-system | grep coredns

# Step 2: Check CoreDNS Deployment — runs with 2 replicas for high availability
kubectl get deployment -n kube-system coredns

# Step 3: Resolve Service name using short name — works within same namespace
kubectl exec -it my-frontend-pod -- nslookup app1-service

# Step 4: Resolve using full DNS name — works from any namespace
kubectl exec -it my-frontend-pod -- nslookup app1-service.default.svc.cluster.local

# Step 5: Call the Service using just the name — no IP needed
kubectl exec -it my-frontend-pod -- wget -qO- http://app1-service
