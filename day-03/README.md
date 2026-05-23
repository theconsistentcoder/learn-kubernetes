# Day 03 — Multi-container Pods — when and why

## Concept
A Pod can run more than one container. All containers inside the same Pod
share the same IP address and network namespace. They communicate with
each other using localhost — no service discovery needed.

## Common Patterns

| Pattern | Description |
|---------|-------------|
| Sidecar | A helper container running alongside the main app |
| Ambassador | A proxy container handling external communication |
| Adapter | A container that transforms the main app's output |

## Key Takeaway
Containers in the same Pod share the same network.
They talk to each other on localhost.

## Interview Question
**How do containers inside the same Pod communicate?**
Answer: Via localhost. They share the same network namespace.

## Files
- `demo.sh` — commands to create and test the multi-container Pod
- `multi-container-pod.yaml` — Pod manifest with two containers
