#!/bin/bash

# Day 17 - CronJobs — scheduled tasks in Kubernetes

# Step 1: View the CronJob YAML
cat backup-cronjob.yaml

# Step 2: Create the CronJob
kubectl apply -f backup-cronjob.yaml

# Step 3: Check the CronJob
# Shows schedule, last schedule time, and active Jobs
kubectl get cronjobs

# Step 4: Wait about a minute, then check Jobs
# A new Job is automatically created by the CronJob
kubectl get jobs

# Step 5: Check Pods created by the scheduled Job
kubectl get pods

# Step 6: View logs from the most recent scheduled run
# Replace <job-name> with the actual Job name from step 4
kubectl logs job/<job-name>

# Cleanup — delete the CronJob when done testing
# kubectl delete cronjob db-backup-cronjob
