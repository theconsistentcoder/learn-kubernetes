#!/bin/bash

# Day 21 - PersistentVolumes and PersistentVolumeClaims

# Step 1: View the PersistentVolume YAML
cat persistent-volume.yaml

# Step 2: Create the PersistentVolume
kubectl apply -f persistent-volume.yaml

# Step 3: View the PersistentVolumeClaim YAML
cat persistent-volume-claim.yaml

# Step 4: Create the PersistentVolumeClaim
kubectl apply -f persistent-volume-claim.yaml

# Step 5: Check PV and PVC status
# Both should show STATUS: Bound — they are matched
kubectl get pv
kubectl get pvc

# Step 6: View and create the Pod that mounts the PVC
cat pvc-pod.yaml
kubectl apply -f pvc-pod.yaml

# Step 7: Confirm Pod is running
kubectl get pods

# Step 8: Write data to the mounted PVC and read it back
kubectl exec -it my-pvc-pod -- sh -c "echo 'data survived' > /storage/test.txt && cat /storage/test.txt"

# Step 9: Delete the Pod and recreate it
# Data should still be there — it lives in the PV, not the container
kubectl delete pod my-pvc-pod
kubectl apply -f pvc-pod.yaml
kubectl exec -it my-pvc-pod -- cat /storage/test.txt
