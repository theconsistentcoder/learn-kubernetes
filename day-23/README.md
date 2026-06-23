# Day 23 — SecurityContext — Pod vs Container Level

## Concept
SecurityContext controls who your container runs as and what it is allowed to do.
It can be set at Pod level (applies to all containers) or container level
(applies to one container and overrides Pod-level settings).

## Key Fields

| Field | Description |
|-------|-------------|
| runAsUser | Linux user ID the container process runs as. Never use 0 (root) |
| runAsNonRoot | true rejects the container if it tries to run as root |
| readOnlyRootFilesystem | true makes container filesystem read-only |
| allowPrivilegeEscalation | false prevents process from gaining extra privileges |
| privileged | true gives root-level node access. Never use in production |

## Pod vs Container Level

| Level | Applies To |
|-------|-----------|
| Pod level | All containers in the Pod |
| Container level | Only that specific container — overrides Pod level |

## Key Takeaway
Always set runAsNonRoot: true, readOnlyRootFilesystem: true,
and allowPrivilegeEscalation: false in production.
Minimum permissions always.

## Interview Question
**What is the difference between Pod-level and container-level SecurityContext?**
Answer: Pod-level SecurityContext applies to all containers in the Pod.
Container-level SecurityContext applies to one specific container
and overrides the Pod-level settings.

## Files
- `demo.sh` — commands to create and verify SecurityContext
- `security-context-pod.yaml` — Pod with Pod-level and container-level SecurityContext
