# Day 26 — NetworkPolicies — Controlling Pod Traffic

## Concept
Kubernetes networking is open by default — any Pod can send traffic to any
other Pod in the cluster. NetworkPolicies let you lock this down by defining
exactly which Pods are allowed to communicate with each other.

## Key Concepts

| Concept | Description |
|---------|-------------|
| podSelector | Which Pods this policy applies to |
| ingress | Controls incoming traffic to a Pod |
| egress | Controls outgoing traffic from a Pod |
| namespaceSelector | Allow traffic from specific namespaces |
| ipBlock | Allow traffic from specific IP ranges |

## Important Rules
- If no NetworkPolicy selects a Pod — all traffic is allowed
- Once any NetworkPolicy selects a Pod — all traffic not explicitly allowed is denied
- NetworkPolicies are additive — multiple policies on the same Pod combine
- Requires a CNI plugin that supports NetworkPolicies — Calico, Cilium, Weave

## Key Takeaway
Start with a deny-all policy. Then open only what you need.
Ingress controls incoming traffic. Egress controls outgoing traffic.
Always lock down Pod-to-Pod communication in production.

## Interview Question
**How do you restrict Pod-to-Pod communication in Kubernetes?**
Answer: NetworkPolicies — define ingress and egress rules using
pod selectors. Start with deny-all, then explicitly allow only
the traffic you need.

## Files
- `demo.sh` — commands to create and test NetworkPolicies
- `deny-all-policy.yaml` — blocks all ingress traffic to all Pods
- `allow-specific-policy.yaml` — allows only frontend to reach backend
- `frontend-pod.yaml` — frontend Pod with label app: frontend
- `backend-pod.yaml` — backend Pod with label app: backend
