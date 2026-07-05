# Day 31 — DNS in Kubernetes — How Pods Find Each Other

## Concept
Kubernetes runs a DNS server called CoreDNS inside every cluster.
Every Pod is automatically configured to use CoreDNS for DNS resolution.
Every Service gets a DNS name automatically — no IP hardcoding needed.

## DNS Name Format
service-name.namespace.svc.cluster.local

## Examples

| Scenario | DNS Name |
|----------|---------|
| Same namespace (short) | backend-service |
| Cross namespace (full) | backend-service.default.svc.cluster.local |
| Pod DNS | pod-ip.namespace.pod.cluster.local |

## Key Rules
- Short name works within the same namespace
- Full DNS name works from anywhere in the cluster
- Never hardcode IPs — always use Service names
- CoreDNS runs as a Deployment in kube-system with 2 replicas for HA

## Key Takeaway
CoreDNS automatically resolves Service names to ClusterIPs.
Use short names within the same namespace.
Use full DNS name across namespaces.
Never hardcode IPs — always use Service names.

## Interview Question
**How do Pods find each other in Kubernetes?**
Answer: Through CoreDNS — every Service gets a DNS name automatically
in the format service-name.namespace.svc.cluster.local.
Short name works within the same namespace.
Full DNS name works across namespaces.

## Files
- `demo.sh` — commands to verify CoreDNS and test DNS resolution
