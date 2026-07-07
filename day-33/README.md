# Day 33 — Reading Logs Like a Pro

## Concept
Kubernetes stores stdout and stderr output of every container as logs.
kubectl logs retrieves them. Knowing the right flags separates a junior
developer from a senior one during a production incident.

## Key Flags

| Flag | Description |
|------|-------------|
| kubectl logs pod-name | Basic log retrieval from main container |
| -c container-name | Specify which container in a multi-container Pod |
| --previous | Logs from the previously crashed container |
| --tail=N | Show only last N lines |
| --since=5m | Show logs from last 5 minutes (s/m/h) |
| -f | Stream logs live in real time |
| -l label=value | Logs from all Pods matching the label selector |
| --all-containers=true | Logs from all containers in matching Pods |

## Key Takeaway
Basic logs — kubectl logs.
Crashed container logs — --previous.
Live streaming — -f.
Filter — --tail and --since.
All replicas at once — -l label selector.
Know all five — you will use them every time there is an incident.

## Interview Question
**How do you retrieve logs from a crashed container in Kubernetes?**
Answer: kubectl logs pod-name --previous
This retrieves logs from the previously crashed container,
not the currently running one.

## Files
- `demo.sh` — all kubectl logs commands with explanations
