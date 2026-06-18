# Day 18 — Node Selectors and Node Affinity

## Concept
By default Kubernetes can schedule any Pod on any node.
nodeSelector and node affinity let a Pod express where it wants to run.

## nodeSelector
Simplest method. Pod spec includes `nodeSelector: gpu: "true"`.
Only schedules on nodes with that exact label. Rigid — exact match or nothing.

## Node Affinity
More powerful and flexible than nodeSelector.

| Type | Behavior |
|------|----------|
| requiredDuringSchedulingIgnoredDuringExecution | Hard rule. Must match or Pod stays Pending |
| preferredDuringSchedulingIgnoredDuringExecution | Soft rule. Tries to match, schedules anyway if no match |

## Key Takeaway
nodeSelector is simple but rigid — exact match or Pending forever.
Node affinity is flexible — required for hard rules, preferred for soft rules
that still let the Pod schedule even without a perfect match.

## Interview Question
**Why use node affinity over nodeSelector?**
Answer: Node affinity supports preferred (soft) rules — the Pod still
schedules even without a perfect match. nodeSelector only supports exact match.

## Files
- `demo.sh` — commands to demo nodeSelector and node affinity
- `nodeselector-pod.yaml` — Pod using nodeSelector
- `affinity-pod.yaml` — Pod using preferred node affinity
