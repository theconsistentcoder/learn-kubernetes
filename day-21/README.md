# Day 21 — PersistentVolumes and PersistentVolumeClaims

## Concept
A PersistentVolume (PV) is storage provisioned by the cluster admin.
A PersistentVolumeClaim (PVC) is a request for storage by a developer.
Kubernetes matches them together. Data survives Pod deletion.

## Access Modes

| Mode | Meaning |
|------|---------|
| ReadWriteOnce | Mounted by one node at a time for reading and writing |
| ReadOnlyMany | Mounted by many nodes as read-only |
| ReadWriteMany | Mounted by many nodes for reading and writing |

## Reclaim Policies

| Policy | Behavior |
|--------|----------|
| Retain | Data kept after PVC deleted — admin must manually clean up |
| Delete | PV and data deleted when PVC is deleted |
| Recycle | Data wiped and PV made available again |

## Key Takeaway
PV is admin-provisioned storage. PVC is developer's request for storage.
Kubernetes matches them. Data survives Pod deletion.
This is production-grade storage in Kubernetes.

## Interview Question
**What is the difference between a Volume and a PersistentVolume?**
Answer: A Volume is defined inside the Pod and lives with it.
A PersistentVolume exists independently of any Pod and survives Pod deletion.

## Files
- `demo.sh` — commands to create PV, PVC, and Pod
- `persistent-volume.yaml` — PersistentVolume manifest
- `persistent-volume-claim.yaml` — PersistentVolumeClaim manifest
- `pvc-pod.yaml` — Pod that mounts the PVC
