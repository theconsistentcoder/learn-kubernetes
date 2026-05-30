# Day 08 — Injecting ConfigMaps as env vars vs volume mounts

## Concept
There are two ways to inject a ConfigMap into a Pod:
1. Environment variables — fixed at Pod startup
2. Volume mounts — dynamic, updates without restart

## Key Difference

| Method | When config changes |
|--------|-------------------|
| Env vars | Pod must restart to pick up new values |
| Volume mounts | File updates automatically, no restart needed |

## Key Takeaway
Use env vars for config that rarely changes.
Use volume mounts when your app needs live config refresh.

## Interview Question
**What is the difference between injecting a ConfigMap as env vars vs volume mounts?**
Answer: Env vars are static — fixed at Pod startup, needs restart on change.
Volume mounts are dynamic — Kubernetes keeps the file in sync with the ConfigMap automatically.

## Files
- `demo.sh` — commands to create and test volume mount injection
- `configmap.yaml` — same ConfigMap from Day 06
- `configmap-volume-pod.yaml` — Pod manifest that injects ConfigMap as volume mount
