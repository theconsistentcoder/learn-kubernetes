# Day 39 — StatefulSets vs Deployments — When State Matters

## Concept
Deployments are for stateless apps — Pods are interchangeable.
StatefulSets are for stateful apps — each Pod has a stable identity,
stable storage, and an ordered lifecycle.

## Three Things StatefulSets Give You That Deployments Cannot

| Feature | Deployment | StatefulSet |
|---------|-----------|-------------|
| Pod names | Random hash — my-app-7d9f8b-xkj2p | Stable ordered — my-app-0, my-app-1 |
| Network identity | Random IP, changes on restart | Stable DNS per Pod |
| Storage | Shared or none | Per-Pod PVC that follows the Pod |
| Startup order | Random | Ordered — 0 first, then 1, then 2 |
| Shutdown order | Random | Reverse — 2 first, then 1, then 0 |

## Stable DNS Format
pod-name.service-name.namespace.svc.cluster.local
Example: my-statefulset-0.my-service.default.svc.cluster.local

## Real World Use Cases
- Databases — MySQL, PostgreSQL, MongoDB
- Message queues — Kafka, RabbitMQ
- Distributed systems — Zookeeper, etcd
- Caches — Redis Cluster

## Key Takeaway
Use Deployments for stateless apps.
Use StatefulSets for stateful apps — databases, message queues, distributed systems.

## Interview Question
**What is the difference between a Deployment and a StatefulSet?**
Answer: Deployments are for stateless apps — Pods are interchangeable with
random names and no guaranteed order. StatefulSets are for stateful apps —
each Pod has a stable ordered name, stable DNS, ordered lifecycle, and
its own PersistentVolumeClaim that follows it on restart.

## Files
- `demo.sh` — commands to create and observe StatefulSet behavior
- `statefulset.yaml` — StatefulSet manifest with volumeClaimTemplates
- `headless-service.yaml` — Headless Service required for stable DNS
