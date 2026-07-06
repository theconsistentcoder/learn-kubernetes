# Day 32 — Liveness vs Readiness vs Startup Probes

## Concept
Three probes — three distinct purposes. Getting them wrong causes production outages.

## Probe Comparison

| Probe | Question | Action on Failure |
|-------|----------|-------------------|
| livenessProbe | Is the container still running correctly? | Restart the container |
| readinessProbe | Is the container ready to receive traffic? | Remove from Service endpoints |
| startupProbe | Has the container finished starting up? | Disable liveness and readiness until it passes |

## Probe Mechanisms

| Mechanism | How it works |
|-----------|-------------|
| httpGet | Sends HTTP request, expects 200 response |
| tcpSocket | Checks if a port is open |
| exec | Runs a command, expects exit code 0 |

## Key Fields

| Field | Description |
|-------|-------------|
| initialDelaySeconds | Wait before first probe check |
| periodSeconds | How often to run the probe |
| failureThreshold | How many failures before action is taken |
| successThreshold | How many successes before marked healthy |
| timeoutSeconds | How long to wait for probe response |

## Key Takeaway
Liveness — is it alive? Restart if not.
Readiness — is it ready for traffic? Remove from endpoints if not.
Startup — has it finished starting? Disable other probes until it has.
Always configure all three for production workloads.

## Interview Question
**What is the difference between liveness and readiness probes?**
Answer: Liveness probe restarts the container when it fails — used to detect
deadlocks or hung processes. Readiness probe removes the Pod from Service
endpoints when it fails — no restart, just stops traffic until it recovers.

## Files
- `demo.sh` — commands to create and verify probe configuration
- `probes-pod.yaml` — Pod with all three probes configured
