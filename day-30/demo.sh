#!/bin/bash

# Day 30 - Ingress Controllers — what runs behind the scenes

# Step 1: Check the Ingress Controller Pod running in ingress-nginx namespace
# This is the actual NGINX reverse proxy enforcing our Ingress rules
kubectl get pods -n ingress-nginx

# Step 2: Check the Ingress Controller Deployment
# It stays running continuously watching for Ingress resources
kubectl get deployment -n ingress-nginx

# Step 3: Describe our Ingress from Day 29
# Look at Events section — Controller picked up and programmed the rules
kubectl describe ingress my-ingress

# Step 4: Check Ingress Controller logs
# Shows every request routed and which Service it went to
kubectl logs -n ingress-nginx deployment/ingress-nginx-controller | tail -10

# Step 5: Test routing still works from Day 29
curl http://$(minikube ip)/app1
curl http://$(minikube ip)/app2
