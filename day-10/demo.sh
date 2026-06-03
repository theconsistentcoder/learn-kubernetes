#!/bin/bash

# Day 10 - LimitRange and ResourceQuota

# Step 1: View the LimitRange YAML
cat limitrange.yaml

# Step 2: View the ResourceQuota YAML
cat resourcequota.yaml

# Step 3: Create LimitRange
# Sets default requests and limits for every Pod in this namespace
kubectl apply -f limitrange.yaml

# Step 4: Create ResourceQuota
# Sets total resource budget for the entire namespace
kubectl apply -f resourcequota.yaml

# Step 5: Verify LimitRange
# Shows default requests and limits applied to every Pod
kubectl describe limitrange my-limitrange

# Step 6: Verify ResourceQuota
# Shows total budget — how much is used and how much is remaining
kubectl describe resourcequota my-quota
