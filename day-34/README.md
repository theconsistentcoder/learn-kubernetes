# Day 34 — kubectl exec, describe, events — Debug Toolkit

## Concept
Three commands — three different angles on the same problem.
Use all three together during any incident for the complete picture.

## The Debug Toolkit

| Command | What it does | When to use |
|---------|-------------|-------------|
| kubectl exec | Gets you inside a running container | Check env vars, files, network, permissions |
| kubectl describe | Full state of any Kubernetes resource | Pod status, events, resource config |
| kubectl get events | All cluster events sorted by time | ImagePullBackOff, OOMKilled, scheduling failures |

## Key kubectl exec Flags

| Flag | Description |
|------|-------------|
| -it | Interactive terminal |
| -- sh | Open a shell inside the container |
| -- env | List environment variables |
| -- ls /path | List files at a path |
| -c container-name | Specify container in multi-container Pod |

## Key kubectl describe Fields to Check
- Node — which node the Pod landed on
- Container State — running, waiting, terminated
- Restart Count — how many times it crashed
- Limits and Requests — resource allocation
- Liveness/Readiness — probe configuration
- Events — most important section, shows errors first

## Key Takeaway
kubectl exec to go inside the container.
kubectl describe for full resource state and events.
kubectl get events for cluster-wide incident log.
Use all three together during any incident.

## Interview Question
**How do you debug a Pod that is running but not working correctly?**
Answer: kubectl exec to inspect inside the container,
kubectl describe for full state and events section,
kubectl get events for cluster-wide history of what happened.

## Files
- `demo.sh` — all three debug commands with explanations
