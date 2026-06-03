# Day 10 — LimitRange and ResourceQuota

## Concept
Three layers of resource control in Kubernetes:
1. Pod level — developer sets limits on their own Pod (Day 09)
2. LimitRange — admin sets defaults so no Pod runs without limits
3. ResourceQuota — admin sets total namespace budget

## LimitRange
Sets default resource requests and limits for every Pod in a namespace.
If a developer forgets to set resources — LimitRange defaults are applied automatically.

## ResourceQuota
Sets a total resource budget for the entire namespace.
Caps total CPU, total memory, and total number of Pods.
Exceeded quota = Kubernetes rejects the Pod.

## Key Takeaway
LimitRange is a safety net per Pod.
ResourceQuota is a total budget per namespace.
Use all three layers together for full control in production.

## Interview Question
**What is the difference between LimitRange and ResourceQuota?**
Answer: LimitRange sets default limits per Pod automatically.
ResourceQuota sets a total resource budget for the entire namespace.

## Files
- `demo.sh` — commands to create and verify LimitRange and ResourceQuota
- `limitrange.yaml` — LimitRange manifest with default requests and limits
- `resourcequota.yaml` — ResourceQuota manifest with namespace budget
