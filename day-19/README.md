# Day 19 — Taints and Tolerations

## Concept
Taints make a node repel Pods by default.
Tolerations are the explicit permission a Pod needs to get past that taint.
Use this to protect specialized or expensive nodes from random workloads.

## Taint Effects

| Effect | Behavior |
|--------|----------|
| NoSchedule | New Pods cannot schedule here unless they tolerate it. Existing Pods not evicted |
| PreferNoSchedule | Soft version — Kubernetes tries to avoid scheduling here but not guaranteed |
| NoExecute | New Pods cannot schedule AND existing Pods without toleration are evicted |

## Toleration Operators

| Operator | Meaning |
|----------|---------|
| Equal | Matches exact key and value |
| Exists | Matches any value for the key |

## Key Takeaway
Taints repel Pods. Tolerations are the keycard to get past the taint.
Use NoSchedule to protect nodes. Use NoExecute to evict existing Pods too.

## Interview Question
**What is the difference between node affinity and taints?**
Answer: Node affinity is the Pod choosing which node it wants to go to.
Taints are the node rejecting Pods unless they explicitly tolerate the taint.

## Files
- `demo.sh` — commands to taint a node and test with and without tolerations
- `no-toleration-pod.yaml` — Pod without toleration that gets blocked
- `toleration-pod.yaml` — Pod with matching toleration that gets through
