# Day 41 — Resource Optimization — HPA and VPA Basics

## Concept
Two autoscalers — two different dimensions.
HPA scales the number of Pod replicas based on load.
VPA scales the resource requests and limits of individual Pods.
Use both together for full resource optimization.

## HPA vs VPA

| | HPA | VPA |
|--|-----|-----|
| Full name | Horizontal Pod Autoscaler | Vertical Pod Autoscaler |
| What it scales | Number of Pod replicas | Resource requests and limits per Pod |
| Direction | Horizontal — more Pods | Vertical — bigger or smaller Pods |
| Use case | Traffic spikes | Right-sizing resource requests |
| Trigger | CPU, memory, custom metrics | Actual historical resource usage |

## Key HPA Fields

| Field | Description |
|-------|-------------|
| scaleTargetRef | Which Deployment to scale |
| minReplicas | Minimum number of Pods |
| maxReplicas | Maximum number of Pods |
| targetCPUUtilizationPercentage | CPU threshold to trigger scaling |

## Prerequisites
HPA requires the Metrics Server installed in your cluster.
Enable in minikube: minikube addons enable metrics-server

## Key Takeaway
HPA scales Pod count based on load — use for traffic spikes.
VPA right-sizes resource requests — use for resource efficiency.
Never run fixed replicas in production when traffic varies.

## Interview Question
**What is the difference between HPA and VPA?**
Answer: HPA — Horizontal Pod Autoscaler — adds more Pod replicas
when load increases and removes them when load decreases.
VPA — Vertical Pod Autoscaler — adjusts the resource requests
and limits of individual Pods based on actual usage patterns.

## Files
- `demo.sh` — commands to create and observe HPA behavior
- `deployment.yaml` — Deployment that HPA will scale
- `hpa.yaml` — HPA targeting the Deployment
