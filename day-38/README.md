# Day 38 — Helm — Installing and Upgrading a Chart

## Concept
The Helm lifecycle — install, upgrade, rollback, uninstall.
Every install and upgrade creates a new revision with full history.
Roll back to any previous revision with one command.

## The Helm Lifecycle

| Command | Description |
|---------|-------------|
| helm install | Install a Chart and create a new Release |
| helm upgrade | Upgrade an existing Release with new values or Chart version |
| helm rollback | Roll back a Release to a previous revision |
| helm uninstall | Remove all Kubernetes resources created by a Release |
| helm list | List all installed Releases |
| helm history | Show all revisions of a Release |

## Key Takeaway
helm install to deploy.
helm upgrade to update.
helm rollback to revert.
helm uninstall to clean up.
Full lifecycle, versioned history, one command each.

## Interview Question
**How do you roll back a Helm release?**
Answer: helm rollback release-name revision-number
Helm keeps a full history of every install and upgrade.
Use helm history release-name to see all available revisions.

## Files
- `demo.sh` — full Helm lifecycle commands
