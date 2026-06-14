# Day 15 — Canary Deployments

## Concept
Canary deployment runs two Deployments at the same time — stable and canary.
Both share the same label, so the same Service routes traffic to both.
Traffic split is controlled purely by replica count.

## How Traffic Splitting Works
9 replicas on stable + 1 replica on canary = roughly 90% stable, 10% canary.
The Service load-balances evenly across all matching Pods regardless of
which Deployment they belong to.

## Key Takeaway
Canary deployments let you test with real traffic safely.
Start small, monitor, gradually shift replica counts.
Something breaks — scale canary back to zero.
Only a small slice of users were ever affected.

## Interview Question
**What is the difference between blue-green and canary deployments?**
Answer: Blue-green is an instant full switch between two environments
using a Service selector label. Canary is a gradual traffic shift
achieved by adjusting replica counts between stable and canary Deployments
that share the same label.

## Files
- `demo.sh` — commands to deploy canary and shift traffic
- `stable-deployment.yaml` — Stable Deployment manifest (9 replicas, nginx 1.19)
- `canary-deployment.yaml` — Canary Deployment manifest (1 replica, nginx 1.21)
- `service.yaml` — Service manifest with shared label selector
