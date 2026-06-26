#!/bin/bash

# Day 26 - NetworkPolicies — controlling Pod traffic

# Step 1: Create frontend and backend Pods
kubectl apply -f frontend-pod.yaml
kubectl apply -f backend-pod.yaml

# Step 2: Get backend Pod IP
kubectl get pods -o wide

# Step 3: Before NetworkPolicy — frontend can reach backend freely
# Replace <BACKEND-IP> with the actual IP from step 2
# kubectl exec -it my-frontend-pod -- wget -qO- --timeout=5 http://<BACKEND-IP>

# Step 4: View and apply deny-all NetworkPolicy
cat deny-all-policy.yaml
kubectl apply -f deny-all-policy.yaml

# Step 5: View and apply allow-specific NetworkPolicy
cat allow-specific-policy.yaml
kubectl apply -f allow-specific-policy.yaml

# Step 6: Check NetworkPolicies are active
kubectl get networkpolicies

# Step 7: Frontend Pod tries to reach backend — should succeed
# Frontend has label app: frontend which is explicitly allowed
# Replace <BACKEND-IP> with actual IP
# kubectl exec -it my-frontend-pod -- wget -qO- --timeout=5 http://<BACKEND-IP>

# Step 8: Any other Pod tries to reach backend — should time out
# kubectl exec -it my-sa-pod -- wget -qO- --timeout=5 http://<BACKEND-IP>

# Cleanup
# kubectl delete networkpolicy deny-all allow-frontend
