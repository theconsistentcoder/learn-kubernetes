# Day 07 — Secrets — storing sensitive data

## Concept
A Secret stores sensitive data as base64 encoded key-value pairs.
Inject into your Pod as environment variables or files.
Kubernetes decodes the values automatically at runtime.

## Key Takeaway
Never hardcode passwords or API keys in your container image or ConfigMap.
Use Secrets for all sensitive data.

## Interview Question
**What is the difference between a ConfigMap and a Secret in Kubernetes?**
Answer: ConfigMap is for non-sensitive config like app name or environment.
Secret is for sensitive data like passwords, tokens, and API keys.
Secrets are base64 encoded and stored encrypted in etcd.

## Files
- `demo.sh` — commands to create Secret and verify injection
- `secret.yaml` — Secret manifest with encoded credentials
- `secret-pod.yaml` — Pod manifest that injects Secret as env vars
