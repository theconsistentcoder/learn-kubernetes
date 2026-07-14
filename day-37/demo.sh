#!/bin/bash

# Day 37 - Helm — what it is and why developers use it

# Step 1: Verify Helm is installed
helm version

# Step 2: Add the Bitnami Helm repository
helm repo add bitnami https://charts.bitnami.com/bitnami

# Step 3: Update repos to get latest Charts
helm repo update

# Step 4: Search for nginx Charts in all added repos
helm search repo nginx

# Step 5: Preview Chart metadata before installing
helm show chart bitnami/nginx
