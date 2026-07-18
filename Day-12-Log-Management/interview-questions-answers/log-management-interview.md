# Day-12 Log Management

# Interview Questions and Answers

---

## 1. What are Linux logs?

**Answer:**

Linux logs are files that store information about system activities, events, errors, warnings, and application activities.

System administrators use logs to:

- Monitor system health
- Troubleshoot problems
- Track security events
- Analyze system behavior

Common log location:

```bash
/var/log



2. Where are Linux log files stored?

Answer:

Linux log files are stored in:

/var/log

Common log files:

/var/log/syslog
/var/log/auth.log
/var/log/kern.log

Explanation:

syslog → General system messages
auth.log → Authentication and login activities
kern.log → Kernel-related messages
3. How do you view log files in Linux?

Answer:

Common commands:

cat /var/log/syslog
less /var/log/syslog
tail -f /var/log/syslog

Explanation:

cat → Displays complete log content
less → Reads large log files page by page
tail -f → Monitors logs in real time
4. What is the use of the tail command in log management?

Answer:

The tail command displays the last lines of a file.

Example:

tail /var/log/syslog

For live monitoring:

tail -f /var/log/syslog

Explanation:

-f continuously displays new log entries as they are generated.

5. How do you search errors in log files?

Answer:

We use the grep command.

Example:

grep error /var/log/syslog

Case-insensitive search:

grep -i error /var/log/syslog

Explanation:

grep searches specific words or patterns inside files.

6. What is the difference between syslog and auth.log?

Answer:

syslog

Location:

/var/log/syslog

Purpose:

Stores general system messages
Service information
Application events
auth.log

Location:

/var/log/auth.log

Purpose:

Login attempts
User authentication
sudo commands
7. What is log rotation?

Answer:

Log rotation is the process of managing old log files.

It helps to:

Save disk space
Compress old logs
Create new log files automatically

Linux uses:

logrotate

for automatic log management.

8. Why is log management important?

Answer:

Log management helps administrators:

Find system errors
Monitor security events
Troubleshoot issues
Analyze system performance
Maintain disk space
9. What is journalctl?

Answer:

journalctl is a command used to view logs managed by systemd.

Example:

journalctl

Show recent logs:

journalctl -n 50

Follow live logs:

journalctl -f
10. How do you check authentication logs?

Answer:

Authentication logs are stored in:

/var/log/auth.log

Command:

cat /var/log/auth.log

Used to check:

User login activity
Failed login attempts
sudo usage
11. How do you backup Linux log files?

Answer:

We can use the tar command.

Example:

tar -czf logs_backup.tar.gz /var/log

Explanation:

c → Create archive
z → Compress archive
f → File name
12. Which command checks disk space for logs?

Answer:

Command:

df -h

Explanation:

df -h shows available disk space in human-readable format.

13. Which command checks the size of log files?

Answer:

Command:

du -sh /var/log

Explanation:

du shows the size of files and directories.

14. Difference between manual and automated log monitoring?

Answer:

Manual monitoring requires administrators to check logs manually.

Automated monitoring uses scripts to perform tasks automatically.

Examples:

log_viewer.sh
error_check.sh
log_backup.sh

Benefits:

Saves time
Reduces manual work
Finds problems faster
15. How do shell scripts help in log management?

Answer:

Shell scripts automate log management tasks.

Examples:

Viewing logs
Searching errors
Creating backups
Monitoring system activities
Cleaning old logs

Shell scripting reduces repetitive work and improves efficiency.

Day-12 Practical Scripts
log_viewer.sh

Purpose:

View system log files.

error_check.sh

Purpose:

Search errors from log files.

log_backup.sh

Purpose:

Create backups of log files.
