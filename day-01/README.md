# Day 01 — What is a Pod and why it exists

## Concept
A Pod is the smallest deployable unit in Kubernetes.
It wraps your container and gives it a unique IP address,
shared storage, and a shared network namespace.

## Key Takeaway
Kubernetes does not run containers directly.
Everything runs inside a Pod.

## Interview Question
**What is the smallest deployable unit in Kubernetes?**
Answer: Pod. Not a container. A Pod.

## Files
- `demo.sh` — kubectl commands for this concept
- `pod.yaml` — Pod manifest for nginx
