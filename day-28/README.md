# Day 28 — ClusterIP vs NodePort vs LoadBalancer

## Concept
Pods are ephemeral — their IP addresses change every time they restart.
A Service provides a stable endpoint that always routes to the right Pod
regardless of restarts or scaling.

## Service Types

| Type | Accessible From | Use Case |
|------|----------------|----------|
| ClusterIP | Inside cluster only | Pod-to-Pod communication |
| NodePort | Outside cluster via node IP + port | Development and testing |
| LoadBalancer | Outside cluster via public IP | Production in cloud environments |

## Key Fields

| Field | Description |
|-------|-------------|
| selector | Which Pods this Service routes to |
| port | The Service port clients connect to |
| targetPort | The container port traffic is forwarded to |
| nodePort | Static port on every node (30000-32767) for NodePort type |

## Key Takeaway
ClusterIP is for internal Pod-to-Pod communication.
NodePort is for external access during development.
LoadBalancer is for production external access in cloud environments.
Always use ClusterIP by default — expose externally only when needed.

## Interview Question
**What is the difference between ClusterIP, NodePort, and LoadBalancer?**
Answer: ClusterIP is internal only — accessible only within the cluster.
NodePort opens a static port on every node for external access.
LoadBalancer provisions a cloud load balancer with a public IP address.

## Files
- `demo.sh` — commands to create and test all three Service types
- `deployment.yaml` — nginx Deployment with 2 replicas
- `clusterip-service.yaml` — ClusterIP Service for internal access
- `nodeport-service.yaml` — NodePort Service for external access
