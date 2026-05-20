# Real-World Kubernetes
### 40 Kubernetes Concepts Every Developer Must Know

A day-by-day Kubernetes learning series with hands-on demos.
Each folder contains the YAML files and scripts for that day's concept.

---

## Series Index

| Day | Topic |
|-----|-------|
| day-01 | What is a Pod and why it exists |
| day-02 | Writing your first Pod YAML |
| day-03 | Multi-container Pods — when and why |
| day-04 | Init Containers — run before your app starts |
| day-05 | Sidecar Containers — helpers that run alongside |
| day-06 | ConfigMaps — externalizing config |
| day-07 | Secrets — storing sensitive data |
| day-08 | Injecting ConfigMaps as env vars vs volume mounts |
| day-09 | Resource requests and limits |
| day-10 | LimitRange and ResourceQuota |
| day-11 | Deployments vs ReplicaSets |
| day-12 | Rolling updates — zero downtime deploys |
| day-13 | Rollback a deployment |
| day-14 | Blue-Green deployments |
| day-15 | Canary deployments |
| day-16 | Jobs — run-to-completion workloads |
| day-17 | CronJobs — scheduled tasks in K8s |
| day-18 | Node selectors, affinity, taints and tolerations |
| day-19 | Volumes — emptyDir and hostPath |
| day-20 | PersistentVolumes and PersistentVolumeClaims |
| day-21 | StorageClasses |
| day-22 | SecurityContext — pod vs container level |
| day-23 | ServiceAccounts — what they are and why they matter |
| day-24 | RBAC — Roles and RoleBindings explained |
| day-25 | NetworkPolicies — controlling pod traffic |
| day-26 | Image security and pulling from private registries |
| day-27 | ClusterIP vs NodePort vs LoadBalancer |
| day-28 | Ingress — routing external traffic |
| day-29 | Ingress controllers — what runs behind the scenes |
| day-30 | DNS in Kubernetes — how pods find each other |
| day-31 | Liveness vs Readiness vs Startup probes |
| day-32 | Reading logs like a pro |
| day-33 | kubectl exec, describe, events — debug toolkit |
| day-34 | API deprecations and how to handle them |
| day-35 | Debugging a broken pod — real-world walkthrough |
| day-36 | Helm — what it is and why developers use it |
| day-37 | Helm — installing and upgrading a chart |
| day-38 | StatefulSets vs Deployments — when state matters |
| day-39 | DaemonSets — one pod per node explained |
| day-40 | Resource optimization — HPA and VPA basics |

---

## Prerequisites
- kubectl installed
- minikube or kind cluster running locally

## How to Use
Each day folder contains:
- `demo.sh` — commands to run in order
- `*.yaml` — Kubernetes manifests used in the demo
- `README.md` — concept explanation and key takeaway
