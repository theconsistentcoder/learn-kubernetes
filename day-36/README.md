# Day 36 — Debugging a Broken Pod — Real-World Walkthrough

## Concept
Three most common broken Pod states in production.
Same debugging system every time — status, describe, logs.

## The Debugging System
1. `kubectl get pods` — check the STATUS column first
2. `kubectl describe pod` — read the Events section for scheduling and image errors
3. `kubectl logs --previous` — read crash logs from the previous container

## Three Common Broken Pod States

| Status | Root Cause | Fix |
|--------|-----------|-----|
| ImagePullBackOff | Wrong image name or tag | Fix image name/tag in YAML and reapply |
| CrashLoopBackOff | App crashing on startup | Check --previous logs for error message |
| Pending | Cannot be scheduled | Check Events for resource or taint issues |

## Key Takeaway
ImagePullBackOff — wrong image, check Events.
CrashLoopBackOff — app crashing, check --previous logs.
Pending — scheduling failure, check Events for resource issues.
Same toolkit every time — get pods, describe, logs.

## Interview Question
**Walk me through how you debug a broken Pod in Kubernetes.**
Answer: kubectl get pods for status, kubectl describe for events
and scheduling errors, kubectl logs --previous for crash logs.
Same system every time regardless of the error.

## Files
- `demo.sh` — full debugging walkthrough for all three scenarios
- `broken-pod-1.yaml` — Pod with wrong image tag — ImagePullBackOff
- `broken-pod-2.yaml` — Pod with missing env var — CrashLoopBackOff
- `broken-pod-3.yaml` — Pod with excessive memory request — Pending
