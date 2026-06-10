# Day 12 — Rolling Updates — Zero Downtime Deploys

## Concept
Rolling updates replace old Pods with new ones gradually.
Users never see downtime during a deployment.
Kubernetes creates a new ReplicaSet for the new version and
gradually shifts Pods from the old ReplicaSet to the new one.

## Key Settings

| Setting | Description |
|---------|-------------|
| maxUnavailable | How many Pods can be down at the same time during update |
| maxSurge | How many extra Pods can be created above desired count |

## Key Takeaway
Always use rolling updates in production.
maxUnavailable controls downtime. maxSurge controls speed.

## Interview Question
**How does Kubernetes achieve zero downtime deployments?**
Answer: Rolling updates — gradually replacing old Pods with new ones
using maxUnavailable and maxSurge settings.

## Files
- `demo.sh` — commands to trigger and monitor a rolling update
- `deployment.yaml` — Deployment manifest with rolling update strategy
