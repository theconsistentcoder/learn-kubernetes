# Day 06 — ConfigMaps — externalizing config

## Concept
A ConfigMap stores non-sensitive configuration as key-value pairs.
Inject it into your Pod as environment variables or as a file.
Config changes stay outside your container image — no rebuild needed.

## Key Takeaway
Never hardcode config in your container image.
Use ConfigMaps to externalize config and inject at runtime.

## Interview Question
**How do you externalize configuration in Kubernetes?**
Answer: Use ConfigMaps. Store config as key-value pairs and
inject as environment variables or volume mounts.

## Files
- `demo.sh` — commands to create ConfigMap and verify injection
- `configmap.yaml` — ConfigMap manifest with app config
- `configmap-pod.yaml` — Pod manifest that injects ConfigMap as env vars
