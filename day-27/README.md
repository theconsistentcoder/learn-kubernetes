# Day 27 — Image Security and Pulling from Private Registries

## Concept
Public images like nginx can be pulled by anyone. Private registry images
require authentication. Kubernetes uses a docker-registry Secret to store
credentials and imagePullSecrets to reference them in the Pod spec.

## Key Concepts

| Concept | Description |
|---------|-------------|
| docker-registry Secret | Special Secret type storing registry credentials |
| imagePullSecrets | Pod spec field referencing the registry Secret |
| kubernetes.io/dockerconfigjson | Secret type for registry credentials |
| ServiceAccount imagePullSecrets | Attach once, all Pods get credentials automatically |

## Key Takeaway
Never store registry credentials in your Pod YAML or container image.
Create a docker-registry Secret and reference it using imagePullSecrets.
Or attach it to a ServiceAccount so all Pods get it automatically.

## Interview Question
**How do you pull from a private registry in Kubernetes?**
Answer: Create a docker-registry Secret with registry credentials
and reference it in the Pod spec using imagePullSecrets.
Kubernetes uses these credentials to authenticate before pulling the image.

## Files
- `demo.sh` — commands to create Secret and deploy Pod with imagePullSecrets
- `private-image-pod.yaml` — Pod using imagePullSecrets to pull private image
