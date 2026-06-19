# Day 20 — Volumes — emptyDir and hostPath

## Concept
A Volume in Kubernetes is storage that exists outside the container's
own filesystem. It gets mounted into the container at a path you define.
Volumes solve the fundamental problem of data persistence when containers
are designed to be temporary.

## Volume Types Covered Today

| Type | Lifetime | Use Case |
|------|----------|----------|
| emptyDir | Lives with the Pod. Gone when Pod is deleted | Sharing data between containers in the same Pod |
| hostPath | Lives on the node. Survives Pod deletion | Accessing node-level files like logs or Docker socket |

## Key Difference
emptyDir is tied to the Pod — data survives container restarts but not Pod deletion.
hostPath is tied to the node — data survives Pod deletion but not node changes.

## Key Takeaway
Always use Volumes when your app writes anything important.
Never rely on the container's local filesystem for persistent data.

## Interview Question
**What is the difference between emptyDir and hostPath?**
Answer: emptyDir lives with the Pod — shared between containers,
gone when Pod is deleted. hostPath lives on the node — survives
Pod deletion but tied to one specific node.

## Files
- `demo.sh` — commands to demo emptyDir and hostPath volumes
- `emptydir-pod.yaml` — Pod with two containers sharing an emptyDir volume
- `hostpath-pod.yaml` — Pod mounting a hostPath volume from the node
