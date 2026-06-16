# Day 17 — CronJobs — Scheduled Tasks in Kubernetes

## Concept
A CronJob wraps a Job template and adds a schedule using standard cron syntax.
It automatically creates a new Job on that schedule — no manual trigger needed.

## Key Fields

| Field | Description |
|-------|-------------|
| schedule | Standard cron syntax — minute hour day-of-month month day-of-week |
| concurrencyPolicy | Allow, Forbid, or Replace overlapping runs |
| successfulJobsHistoryLimit | How many successful Job records to keep. Default 3 |
| failedJobsHistoryLimit | How many failed Job records to keep. Default 1 |
| startingDeadlineSeconds | How late a missed run can still start |

## Cron Schedule Examples

| Schedule | Meaning |
|----------|---------|
| `*/1 * * * *` | Every minute |
| `0 2 * * *` | Every day at 2am |
| `0 0 * * 0` | Every Sunday at midnight |
| `0 */6 * * *` | Every 6 hours |

## Key Takeaway
CronJobs automate recurring tasks like backups, reports, and cleanup jobs.
Know concurrencyPolicy — Allow, Forbid, Replace — common interview question.

## Interview Question
**What is the difference between a Job and a CronJob?**
Answer: A Job runs once. A CronJob automatically creates Jobs
on a recurring schedule using cron syntax.

## Files
- `demo.sh` — commands to create and monitor the scheduled backup
- `backup-cronjob.yaml` — CronJob manifest wrapping the Day 16 backup Job
