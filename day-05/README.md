# Day 05 — Sidecar Containers — helpers that run alongside

## Concept
A sidecar container runs alongside your main container inside the same Pod.
They share the same network and the same volumes.
The sidecar supports the main app without touching its code.

## Use Case — Config Refresher
The sidecar periodically writes an updated config file to a shared volume.
The main app reads from that same volume.
No restart needed. Zero downtime.

## Key Takeaway
Sidecar containers run alongside your main app in the same Pod.
They share volumes and network.
Use them to support your main app without touching its code.

## Interview Question
**How do you update config without restarting your app in Kubernetes?**
Answer: Use a sidecar container writing to a shared volume.
The main app reads from the same volume — no restart needed.

## Files
- `demo.sh` — commands to create and test the sidecar Pod
- `sidecar-pod.yaml` — Pod manifest with main app and config refresher sidecar
