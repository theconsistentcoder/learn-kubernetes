# Day 14 — Blue-Green Deployments

## Concept
Blue-green deployment uses two identical Deployments — blue is the current
live version, green is the new version. Both run simultaneously, fully
ready and healthy. A Service sits in front and routes traffic to one of
them using a label selector. Switching is just a label change — instant.

## Why Faster Than Rolling Rollback
Rolling update rollback terminates new Pods and brings back old ones,
Pod by Pod, with health checks — takes time.
Blue-green rollback is just changing the Service selector label —
both versions already exist and are healthy. Milliseconds.

## Key Takeaway
Blue-green keeps both versions running and ready.
Switching is just a label change — instant in both directions.

## Interview Question
**Why is blue-green rollback faster than rolling update rollback?**
Answer: Rolling rollback replaces Pods one by one with health checks.
Blue-green rollback is just a Service selector label switch —
both versions already exist and are healthy.

## Files
- `demo.sh` — commands to deploy blue-green and switch traffic
- `blue-deployment.yaml` — Blue Deployment manifest (nginx 1.19)
- `green-deployment.yaml` — Green Deployment manifest (nginx 1.21)
- `service.yaml` — Service manifest with label selector
