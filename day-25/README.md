# Day 25 — RBAC — Roles and RoleBindings Explained

## Concept
RBAC — Role Based Access Control — defines exactly what a ServiceAccount
is allowed to do in Kubernetes. Identity alone (ServiceAccount) means nothing
without permissions (Role + RoleBinding).

## Four Key RBAC Resources

| Resource | Scope | Description |
|----------|-------|-------------|
| Role | Namespace | Defines permissions within a specific namespace |
| ClusterRole | Cluster-wide | Defines permissions across the entire cluster |
| RoleBinding | Namespace | Connects a Role to a ServiceAccount/user/group |
| ClusterRoleBinding | Cluster-wide | Connects a ClusterRole to a ServiceAccount/user/group |

## Key Verbs

| Verb | Action |
|------|--------|
| get | Read a single resource |
| list | List all resources of a type |
| watch | Watch for changes to resources |
| create | Create a new resource |
| update | Update an existing resource |
| patch | Partially update a resource |
| delete | Delete a resource |

## Key Takeaway
Role defines permissions. RoleBinding connects a Role to a ServiceAccount.
Always follow least privilege — grant only what is needed, nothing more.

## Interview Question
**What is the difference between a Role and a ClusterRole?**
Answer: A Role is namespace-scoped — permissions apply only within
one namespace. A ClusterRole applies across the entire cluster and
can be used for cluster-wide resources like Nodes or PersistentVolumes.

## Files
- `demo.sh` — commands to create Role, RoleBinding and verify permissions
- `role.yaml` — Role allowing get, list, watch on Pods
- `rolebinding.yaml` — RoleBinding connecting Role to ServiceAccount
