# Day 02 — Writing your first Pod YAML

## Concept
Every Kubernetes resource is defined using a YAML file.
A Pod YAML has four mandatory sections — apiVersion, kind, metadata, and spec.
Learn these once and you can read any Kubernetes YAML file.

## Field Breakdown

| Field | Description |
|-------|-------------|
| apiVersion | Which rulebook Kubernetes should follow. Pod uses v1 |
| kind | What resource you want to create. Here it is Pod |
| metadata.name | The identity of your Pod inside the cluster |
| metadata.labels | Tags on your Pod — used by Services to find it later |
| spec | The job description — what actually runs inside the Pod |
| spec.containers | List of containers. One Pod can have more than one container |
| spec.containers.name | Name of the container |
| spec.containers.image | Docker image to run |
| spec.containers.containerPort | Port the container listens on |

## Key Takeaway
apiVersion, kind, metadata, spec — these four sections exist in every single Kubernetes resource.
Learn these once, read any YAML file forever.

## Interview Question
**What are the mandatory fields in a Kubernetes YAML?**
Answer: apiVersion, kind, metadata, and spec.

## Files
- `demo.sh` — commands to apply and verify the Pod
- `pod.yaml` — Pod manifest with all fields explained in comments
