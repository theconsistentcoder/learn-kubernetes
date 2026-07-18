# Day 40 — DaemonSets — One Pod Per Node Explained

## Concept
A DaemonSet ensures exactly one copy of a Pod runs on every node in the cluster.
When a new node is added, the DaemonSet automatically schedules a Pod on it.
When a node is removed, the Pod is garbage collected.
No replicas field — Kubernetes decides the count based on node count.

## DaemonSet vs Deployment

| | Deployment | DaemonSet |
|--|-----------|-----------|
| Replica control | You set the count | Kubernetes decides based on nodes |
| Scheduling | Any available node | Every node |
| New node added | No automatic action | Pod automatically scheduled |
| Node removed | No automatic action | Pod automatically cleaned up |
| Use case | Stateless apps | Infrastructure agents |

## Real World Use Cases
- Fluentd / Filebeat — log collection from every node
- Prometheus Node Exporter — node-level metrics
- Calico / Cilium — network plugins
- kube-proxy — built-in Kubernetes DaemonSet on every node

## Key Takeaway
DaemonSets run exactly one Pod per node.
No replicas field — Kubernetes decides the count based on node count.
New node added — Pod appears automatically.
Use DaemonSets for infrastructure agents that need to run everywhere.

## Interview Question
**What is the difference between a Deployment and a DaemonSet?**
Answer: A Deployment controls replica count — you decide how many Pods run.
A DaemonSet ensures exactly one Pod runs on every node automatically.
When a new node joins the cluster, the DaemonSet Pod appears on it
without any manual action.

## Files
- `demo.sh` — commands to create and observe DaemonSet behavior
- `daemonset.yaml` — DaemonSet manifest simulating a log collector
