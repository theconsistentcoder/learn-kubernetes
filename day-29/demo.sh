#!/bin/bash

# Day 29 - Ingress — routing external traffic

# Step 1: Enable the ingress addon in minikube
# This installs the NGINX Ingress Controller
minikube addons enable ingress

# Step 2: Wait for ingress controller to be ready
kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s

# Step 3: Create app1 and app2 Deployments
kubectl apply -f app1-deployment.yaml
kubectl apply -f app2-deployment.yaml

# Step 4: Create Services for both apps
kubectl apply -f app1-service.yaml
kubectl apply -f app2-service.yaml

# Step 5: View and create the Ingress
cat ingress.yaml
kubectl apply -f ingress.yaml

# Step 6: Check Ingress is assigned an address
kubectl get ingress

# Step 7: Test path-based routing
curl http://$(minikube ip)/app1
curl http://$(minikube ip)/app2
