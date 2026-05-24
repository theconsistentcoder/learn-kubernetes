# Day 04 — Init Containers — run before your app starts

## Concept
Init containers run before your main app container starts.
They always run to completion. If an init container fails,
Kubernetes keeps restarting it until it succeeds.
Only when all init containers complete does the main app start.

## Key Takeaway
Use init containers for setup tasks like downloading configs,
waiting for dependencies, or preparing the environment.

## Interview Question
**How do you run a setup task before your app starts in Kubernetes?**
Answer: Use init containers. They run first, complete their job,
and only then does the main app container start.

## Files
- `demo.sh` — commands to create and observe the init container Pod
- `init-container-pod.yaml` — Pod manifest with init container and shared volume
