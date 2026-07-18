#!/bin/bash

# Day-12 Log Management
# Create Interview Questions and Answers File

DIR="interview-questions-answers"
FILE="$DIR/log-management-interview.md"

echo "Creating interview questions directory..."

mkdir -p $DIR

echo "Creating interview questions file..."

cat > $FILE <<EOF
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

\`\`\`bash
/var/log
\`\`\`

---

## 2. Where are Linux log files stored?

**Answer:**

Linux log files are stored in:

\`\`\`bash
/var/log
\`\`\`

Common files:

- syslog
- auth.log
- kern.log

---

## 3. How do you view log files?

**Answer:**

Using commands:

\`\`\`bash
cat /var/log/syslog
less /var/log/syslog
tail -f /var/log/syslog
\`\`\`

Explanation:

- cat displays logs
- less reads large files
- tail -f monitors live logs

---

## 4. How do you search errors in log files?

**Answer:**

Use grep:

\`\`\`bash
grep error /var/log/syslog
\`\`\`

Explanation:

grep searches specific patterns inside files.

---

## 5. What is log rotation?

**Answer:**

Log rotation manages old logs by:

- Compressing old logs
- Creating new log files
- Removing unnecessary logs

Command:

\`\`\`bash
logrotate
\`\`\`

---

## 6. What is journalctl?

**Answer:**

journalctl is used to view systemd logs.

Examples:

\`\`\`bash
journalctl
journalctl -f
\`\`\`

---

## 7. How do you backup logs?

**Answer:**

Using tar:

\`\`\`bash
tar -czf logs_backup.tar.gz /var/log
\`\`\`

---

## 8. How do shell scripts help in log management?

**Answer:**

Shell scripts automate:

- Log viewing
- Error checking
- Log backup
- Monitoring tasks

---

# Day-12 Scripts Created

1. log_viewer.sh
2. error_check.sh
3. log_backup.sh

# Skills Learned

- Linux logs
- /var/log directory
- Log monitoring
- Error searching
- Log backup
- Shell automation

EOF

echo "Interview questions file created successfully!"

echo "Location:"
echo "$FILE"
