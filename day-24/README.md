# Day 24 — ServiceAccounts — What They Are and Why They Matter

## Concept
A ServiceAccount is the identity of a Pod inside the Kubernetes cluster.
Every Pod gets the default ServiceAccount automatically.
Kubernetes mounts a token for this ServiceAccount inside every container
at /var/run/secrets/kubernetes.io/serviceaccount/token.
The Pod uses this token to authenticate to the Kubernetes API.

## SecurityContext vs ServiceAccount

| | SecurityContext | ServiceAccount |
|--|----------------|----------------|
| What it controls | Linux OS permissions inside the container | Kubernetes API identity of the Pod |
| About | What the container can DO on the system | Who the Pod IS to Kubernetes |
| Examples | runAsUser, readOnlyRootFilesystem | Token for API authentication |

## Key Fields

| Field | Description |
|-------|-------------|
| serviceAccountName | Which ServiceAccount to use for this Pod |
| automountServiceAccountToken | false if Pod doesn't need Kubernetes API access |

## Mounted Files
Three files are automatically mounted at /var/run/secrets/kubernetes.io/serviceaccount/:
- token — JWT token for API authentication
- ca.crt — cluster certificate authority
- namespace — current namespace name

## Key Takeaway
Every Pod gets the default ServiceAccount automatically.
Create custom ServiceAccounts for apps that need specific API access.
If your Pod doesn't need API access — set automountServiceAccountToken: false.

## Interview Question
**How does a Pod authenticate to the Kubernetes API?**
Answer: Through a ServiceAccount token automatically mounted at
/var/run/secrets/kubernetes.io/serviceaccount/token inside every container.

## Files
- `demo.sh` — commands to create and verify ServiceAccount
- `custom-serviceaccount.yaml` — custom ServiceAccount manifest
- `serviceaccount-pod.yaml` — Pod using the custom ServiceAccount
