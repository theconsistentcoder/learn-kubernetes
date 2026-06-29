#!/bin/bash

# Day 28 - ClusterIP vs NodePort vs LoadBalancer

# Step 1: Create the Deployment
kubectl apply -f deployment.yaml
kubectl get pods

# Step 2: View and create ClusterIP Service
cat clusterip-service.yaml
kubectl apply -f clusterip-service.yaml
kubectl get service my-clusterip-service

# Step 3: View and create NodePort Service
cat nodeport-service.yaml
kubectl apply -f nodeport-service.yaml
kubectl get service my-nodeport-service

# Step 4: Get the NodePort URL using minikube
minikube service my-nodeport-service --url

# Step 5: Test the NodePort Service
curl $(minikube service my-nodeport-service --url)
