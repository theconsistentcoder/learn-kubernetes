# Day 22 — StorageClasses

## Concept
A StorageClass defines a category of storage — the provisioner that creates it,
the reclaim policy, and the binding mode. When a PVC references a StorageClass,
Kubernetes automatically creates a matching PV. This is dynamic provisioning —
no admin needs to manually pre-create PersistentVolumes.

## Key Fields

| Field | Description |
|-------|-------------|
| provisioner | Plugin that creates the storage (aws-ebs, gce-pd, minikube-hostpath, etc.) |
| reclaimPolicy | Retain or Delete. Default is Delete |
| volumeBindingMode | Immediate or WaitForFirstConsumer |
| allowVolumeExpansion | Whether the PVC can be resized after creation |

## Key Takeaway
A StorageClass defines the type of storage, the provisioner, and the reclaim
policy. When a PVC references it, Kubernetes automatically creates the PV.
No admin needed. That is dynamic provisioning.

## Interview Question
**What is the difference between a PersistentVolume and a StorageClass?**
Answer: A PV is manually created storage. A StorageClass dynamically
provisions storage on demand when a PVC references it.

## Files
- `demo.sh` — commands to demo dynamic provisioning
- `storageclass-pvc.yaml` — PVC referencing the default StorageClass
- `storageclass-pod.yaml` — Pod that mounts the dynamically provisioned PVC
