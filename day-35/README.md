# Day 35 — API Deprecations and How to Handle Them

## Concept
Kubernetes APIs go through three stages — Alpha, Beta, and GA.
When a GA replacement exists, the old API gets deprecated and eventually removed.
YAML files using removed APIs fail silently on cluster upgrades.

## API Lifecycle

| Stage | Stability | When removed |
|-------|-----------|-------------|
| Alpha | Experimental, can change any time | Any release |
| Beta | More stable but still evolving | After GA is available |
| GA | Stable, production ready | Never (but old versions deprecated) |

## Common Deprecated APIs

| Old API | New API | Resource |
|---------|---------|----------|
| extensions/v1beta1 | apps/v1 | Deployment, ReplicaSet, DaemonSet |
| apps/v1beta1 | apps/v1 | Deployment, StatefulSet |
| networking.k8s.io/v1beta1 | networking.k8s.io/v1 | Ingress |
| rbac.authorization.k8s.io/v1beta1 | rbac.authorization.k8s.io/v1 | Role, ClusterRole |

## Key Commands

| Command | Description |
|---------|-------------|
| kubectl api-versions | List all API versions supported by your cluster |
| kubectl explain <resource> | Show current apiVersion and fields for a resource |
| kubectl convert | Convert YAML from old API to new API version |

## Key Takeaway
Always check kubectl api-versions before upgrading a cluster.
Use kubectl explain to verify the correct apiVersion for any resource.
Update your YAML files before upgrading — never after.

## Interview Question
**What happens when a Kubernetes API is deprecated?**
Answer: It gets removed in a future version. YAML files using the old
apiVersion stop working. You need to update the apiVersion in your
YAML files and reapply before upgrading the cluster.

## Files
- `demo.sh` — commands to detect and handle API deprecations
- `deprecated-deployment.yaml` — Deployment using old removed API
- `updated-deployment.yaml` — Same Deployment using current API
