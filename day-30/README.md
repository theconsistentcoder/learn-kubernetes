# Day 30 — Ingress Controllers — What Runs Behind the Scenes

## Concept
An Ingress resource defines routing rules but does nothing by itself.
An Ingress Controller is actual software running as a Pod in your cluster
that reads those rules and enforces them.
You always need both — the resource and the controller.

## Popular Ingress Controllers

| Controller | Use Case |
|------------|----------|
| NGINX Ingress Controller | Most popular, works everywhere |
| Traefik | Popular in on-premise and Docker Swarm migrations |
| HAProxy | High performance, enterprise use |
| AWS ALB Ingress Controller | Native AWS integration |
| GCP Cloud Load Balancer | Native GCP integration |
| Azure Application Gateway | Native Azure integration |

## How It Works
1. You create an Ingress resource with routing rules
2. The Ingress Controller is watching for Ingress resources
3. Controller reads the rules and configures itself (e.g. NGINX config)
4. Traffic hits the Controller, which routes to the right Service

## Key Takeaway
Ingress resource = the rules.
Ingress Controller = the software enforcing the rules.
Kubernetes does not come with an Ingress Controller by default.
You must install one yourself.

## Interview Question
**What is the difference between an Ingress resource and an Ingress Controller?**
Answer: The Ingress resource defines the routing rules as a Kubernetes object.
The Ingress Controller is actual software running as a Pod that reads
those rules and enforces them by configuring a reverse proxy like NGINX.

## Files
- `demo.sh` — commands to inspect the Ingress Controller and verify routing
