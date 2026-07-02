# Day 29 — Ingress — Routing External Traffic

## Concept
Ingress is a Kubernetes resource that defines routing rules based on hostname
or URL path to direct external traffic to the right internal Service.
One entry point, multiple Services — no need for a LoadBalancer per Service.

## Ingress vs LoadBalancer

| | LoadBalancer | Ingress |
|--|-------------|---------|
| Entry points | One per Service | One for all Services |
| Path routing | No | Yes |
| Host routing | No | Yes |
| Cloud cost | One LB per Service | One LB total |

## Key Fields

| Field | Description |
|-------|-------------|
| rules | Hostname and path-based routing rules |
| path | URL path to match |
| pathType | Prefix, Exact, or ImplementationSpecific |
| backend | Which Service and port to route to |

## pathType Options
- Prefix — matches anything starting with that path. Most common.
- Exact — matches the exact path only
- ImplementationSpecific — behaviour depends on the Ingress Controller

## Key Takeaway
Ingress gives you path-based and hostname-based routing through a single
entry point. You need both an Ingress resource defining the rules and an
Ingress Controller enforcing them.

## Interview Question
**What is the difference between a Service and an Ingress?**
Answer: A Service exposes one set of Pods. Ingress routes external traffic
to multiple Services based on hostname or path through a single entry point.

## Files
- `demo.sh` — commands to enable ingress and test path-based routing
- `ingress.yaml` — Ingress resource with path-based routing rules
- `app1-deployment.yaml` — app1 Deployment
- `app2-deployment.yaml` — app2 Deployment
- `app1-service.yaml` — ClusterIP Service for app1
- `app2-service.yaml` — ClusterIP Service for app2
