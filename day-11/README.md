# Day 11 — Deployments vs ReplicaSets

## Concept
A ReplicaSet ensures a specified number of Pod replicas are running at all times.
A Deployment manages ReplicaSets and handles rolling updates and rollbacks.
Always use Deployments — never create ReplicaSets directly.

## Key Difference

| | ReplicaSet | Deployment |
|--|-----------|------------|
| Purpose | Maintain Pod count | Manage ReplicaSets |
| Rolling updates | No | Yes |
| Rollbacks | No | Yes |
| Use directly | Never | Always |

## Key Takeaway
ReplicaSet maintains the count of Pods.
Deployment manages ReplicaSets and handles updates and rollbacks.
Always use Deployments.

## Interview Question
**What is the difference between a Deployment and a ReplicaSet?**
Answer: ReplicaSet maintains Pod count and replaces crashed Pods.
Deployment manages ReplicaSets and handles rolling updates and rollbacks.

## Files
- `demo.sh` — commands to create and verify Deployment and ReplicaSet
- `deployment.yaml` — Deployment manifest with 3 replicas
