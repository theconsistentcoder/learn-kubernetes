# Day 13 — Rollback a Deployment

## Concept
Every time you update a Deployment Kubernetes saves the previous state
in the old ReplicaSet. It does not delete it — just scales it down to zero.
When you rollback Kubernetes scales the old ReplicaSet back up instantly.

## Key Takeaway
Always know the rollback command before going on-call.
`kubectl rollout undo` is your best friend in a production incident.

## Interview Question
**How do you rollback a failed deployment in Kubernetes?**
Answer: `kubectl rollout undo deployment/<name>`
This instantly rolls back to the previous working version.
Use `--to-revision=<n>` to roll back to a specific revision.

## Files
- `demo.sh` — commands to trigger a bad deployment and rollback
- `deployment.yaml` — Deployment manifest used for rollback demo
