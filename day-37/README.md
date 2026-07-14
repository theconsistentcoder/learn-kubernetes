# Day 37 — Helm — What It Is and Why Developers Use It

## Concept
Helm is a package manager for Kubernetes.
It packages all your Kubernetes YAML files into a single installable unit
called a Chart with configurable values.

## Four Key Concepts

| Concept | Description |
|---------|-------------|
| Chart | A Helm package containing all Kubernetes YAML templates for an app |
| Release | An installed instance of a Chart |
| Repository | Where Charts are stored and shared (like Docker Hub for Helm) |
| Values | Configurable parameters that make Charts reusable across environments |

## Key Takeaway
Helm packages your entire Kubernetes app into a Chart.
A Release is an installed instance.
A Repository is where Charts are stored.
Values make Charts configurable across environments.
One command to install everything.

## Interview Question
**What is Helm and why do you use it?**
Answer: Helm is a package manager for Kubernetes. It packages all your
YAML files into a Chart and lets you install, upgrade, and rollback
your entire app with one command. Values make it configurable per environment.

## Files
- `demo.sh` — commands to add a repo, search, and inspect a Chart
