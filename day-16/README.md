# Day 16 — Jobs — Run-to-Completion Workloads

## Concept
A Job creates Pods and ensures they run to completion.
Exit code 0 means success. Unlike Deployments, Jobs do not
keep Pods running forever — once the task completes, the Job is done.

## Key Fields

| Field | Description |
|-------|-------------|
| restartPolicy | Must be Never or OnFailure — never Always |
| backoffLimit | Number of retries before marking the Job as failed. Default is 6 |
| completions | Total successful runs needed. Default is 1 |
| parallelism | How many Pods run at the same time |
| activeDeadlineSeconds | Maximum time the Job is allowed to run |
| ttlSecondsAfterFinished | How long to keep Job and Pods after completion |

## Key Takeaway
Jobs run a task to completion and stop.
Use them for backups, migrations, batch processing.
Deployments run forever. Jobs finish.

## Interview Question
**When do you use a Job instead of a Deployment?**
Answer: Whenever a task needs to run to completion and exit —
backups, data migrations, batch processing. Deployments are for
workloads that run forever like web servers.

## Files
- `demo.sh` — commands to create and verify the backup Job
- `backup-job.yaml` — Job manifest simulating a database backup
