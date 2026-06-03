# Day 09 — Resource Requests and Limits

## Concept
Resource requests tell Kubernetes how much CPU and memory your container
needs to run. Kubernetes uses this to decide which node to schedule your Pod on.
Resource limits tell Kubernetes the maximum your container is allowed to use.

## Key Difference

| | Requests | Limits |
|--|---------|--------|
| Purpose | Scheduling | Enforcement |
| CPU exceeded | N/A | Throttled |
| Memory exceeded | N/A | Container killed |

## QoS Classes
| Class | When |
|-------|------|
| BestEffort | No requests or limits set |
| Burstable | Requests less than limits |
| Guaranteed | Requests equal limits |

## Key Takeaway
Always set both requests and limits in production.
Never leave them empty.

## Interview Question
**What is the difference between resource requests and limits in Kubernetes?**
Answer: Requests are for scheduling — Kubernetes uses them to find the right node.
Limits are for enforcement — container cannot exceed them.

## Files
- `demo.sh` — commands to create and verify resource allocation
- `resource-pod.yaml` — Pod manifest with requests and limits defined
