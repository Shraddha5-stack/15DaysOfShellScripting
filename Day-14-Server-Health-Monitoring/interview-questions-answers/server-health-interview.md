# Day-14 Server Health Monitoring

# Interview Questions and Answers

---

## 1. What is server health monitoring?

**Answer:**

Server health monitoring is the process of checking the performance and status of a server.

It helps administrators:

- Monitor CPU usage
- Check memory usage
- Monitor disk space
- Track running processes
- Detect system issues
- Improve server performance

---

## 2. Why is server health monitoring important?

**Answer:**

Server health monitoring is important because it:

- Prevents system failures
- Detects performance issues early
- Improves server reliability
- Helps troubleshoot problems
- Ensures optimal resource utilization

---

## 3. How do you check CPU usage in Linux?

**Answer:**

Use:

```bash
top
```

or

```bash
top -bn1 | grep "Cpu(s)"
```

**Explanation:**

- `top` displays real-time CPU usage.
- `-b` runs in batch mode.
- `-n1` shows one snapshot.

---

## 4. What does the `top` command do?

**Answer:**

The `top` command displays:

- Running processes
- CPU usage
- Memory usage
- Load average
- Process IDs

It updates continuously in real time.

---

## 5. How do you check memory usage?

**Answer:**

Use:

```bash
free -h
```

**Explanation:**

- `free` displays RAM and swap usage.
- `-h` shows output in a human-readable format (MB/GB).

---

## 6. What information does the `free` command provide?

**Answer:**

It displays:

- Total memory
- Used memory
- Free memory
- Shared memory
- Buffers/cache
- Swap memory

---

## 7. How do you check disk usage?

**Answer:**

Use:

```bash
df -h
```

**Explanation:**

- `df` shows filesystem disk usage.
- `-h` displays sizes in a human-readable format.

---

## 8. What is the difference between `df` and `du`?

**Answer:**

| `df` | `du` |
|------|------|
| Shows filesystem usage | Shows file or directory size |
| Displays available disk space | Displays space used by files/directories |

Example:

```bash
df -h
du -sh /var/log
```

---

## 9. How do you check system uptime?

**Answer:**

Use:

```bash
uptime
```

**Explanation:**

It displays:

- Current time
- System running time
- Logged-in users
- Load average

---

## 10. What is system uptime?

**Answer:**

System uptime is the amount of time a server has been running since its last boot.

It helps determine system stability.

---

## 11. How do you monitor running processes?

**Answer:**

Use:

```bash
ps aux
```

or

```bash
ps -eo pid,ppid,cmd,%mem,%cpu
```

These commands display information about active processes.

---

## 12. What is a process?

**Answer:**

A process is a running instance of a program.

Each process has:

- Process ID (PID)
- CPU usage
- Memory usage
- Owner
- Status

---

## 13. What does the `ps` command do?

**Answer:**

The `ps` command displays information about running processes.

Example:

```bash
ps aux
```

It helps administrators monitor active tasks.

---

## 14. Why do we sort processes by CPU usage?

**Answer:**

Sorting processes by CPU usage helps identify:

- High CPU-consuming applications
- Performance bottlenecks
- Resource-intensive processes

Example:

```bash
ps -eo pid,cmd,%cpu --sort=-%cpu
```

---

## 15. What is a server health report?

**Answer:**

A server health report is a summary of the server's current status.

It includes:

- CPU usage
- Memory usage
- Disk usage
- Uptime
- Running processes

---

## 16. Why do administrators monitor CPU usage?

**Answer:**

CPU monitoring helps:

- Detect high CPU utilization
- Identify overloaded systems
- Improve performance
- Prevent server crashes

---

## 17. Why is memory monitoring important?

**Answer:**

Memory monitoring helps:

- Detect memory shortages
- Improve application performance
- Prevent system slowdowns
- Monitor swap usage

---

## 18. Why should disk usage be monitored?

**Answer:**

Disk monitoring helps:

- Prevent disk full errors
- Monitor storage usage
- Improve system reliability
- Plan storage upgrades

---

## 19. What is load average?

**Answer:**

Load average indicates the average number of processes waiting for CPU time.

The `uptime` command displays load averages for:

- 1 minute
- 5 minutes
- 15 minutes

---

## 20. What is the purpose of `grep` in monitoring?

**Answer:**

`grep` searches for specific text or patterns.

Example:

```bash
top -bn1 | grep "Cpu(s)"
```

It filters only the required information.

---

## 21. Why do we automate server monitoring?

**Answer:**

Automation:

- Saves time
- Reduces manual work
- Improves accuracy
- Detects issues quickly

---

## 22. What are the scripts created in this project?

**Answer:**

- `cpu_usage.sh`
- `memory_usage.sh`
- `disk_usage.sh`
- `uptime_check.sh`
- `process_monitor.sh`
- `server_health_report.sh`

---

## 23. Which Linux commands were used in this project?

**Answer:**

Commands used:

```bash
top
free
df
uptime
ps
grep
hostname
head
```

These commands help monitor various system resources.

---

## 24. What skills did you learn in this project?

**Answer:**

Skills learned:

- CPU monitoring
- Memory monitoring
- Disk monitoring
- Process management
- Server health reporting
- Bash scripting
- Linux administration

---

## 25. How does Bash scripting help in server monitoring?

**Answer:**

Bash scripting automates server monitoring tasks.

Benefits include:

- Faster health checks
- Reduced manual effort
- Consistent monitoring
- Easy report generation
- Improved system administration

---

# Day-14 Practical Scripts

## cpu_usage.sh

**Purpose:**

Displays current CPU usage.

---

## memory_usage.sh

**Purpose:**

Displays RAM and swap usage.

---

## disk_usage.sh

**Purpose:**

Displays disk usage.

---

## uptime_check.sh

**Purpose:**

Displays system uptime and load average.

---

## process_monitor.sh

**Purpose:**

Displays top CPU-consuming processes.

---

## server_health_report.sh

**Purpose:**

Generates a complete server health report.




---

## 26. What does the `hostname` command do?

**Answer:**

The `hostname` command displays the name of the current Linux system.

Example:

```bash
hostname
```

**Why?**

It helps identify the server, especially when managing multiple servers.

---

## 27. What is CPU usage?

**Answer:**

CPU usage is the percentage of processor resources currently being used by running processes.

High CPU usage may indicate:

- Heavy applications
- Too many running processes
- Performance issues

---

## 28. What is RAM?

**Answer:**

RAM (Random Access Memory) is temporary memory used by the operating system and running applications.

When RAM is full, Linux starts using swap memory.

---

## 29. What is Swap Memory?

**Answer:**

Swap memory is disk space used as virtual memory when RAM becomes full.

It helps prevent application crashes but is slower than RAM.

Check swap usage:

```bash
free -h
```

---

## 30. What does the `df` command stand for?

**Answer:**

`df` stands for **Disk Filesystem**.

It displays:

- Total disk space
- Used space
- Available space
- Mounted filesystems

Example:

```bash
df -h
```

---

## 31. What does the `du` command stand for?

**Answer:**

`du` stands for **Disk Usage**.

It shows the size of files and directories.

Example:

```bash
du -sh /home
```

---

## 32. What does the `-h` option mean?

**Answer:**

The `-h` option means **human-readable**.

It displays sizes in:

- KB
- MB
- GB

instead of bytes.

Example:

```bash
df -h
free -h
```

---

## 33. What is the purpose of the `head` command?

**Answer:**

The `head` command displays the first few lines of a file or command output.

Example:

```bash
head file.txt
```

or

```bash
ps aux | head
```

---

## 34. What is the purpose of the `grep` command?

**Answer:**

`grep` searches for specific text or patterns.

Example:

```bash
grep "Cpu" file.txt
```

It filters only the required information.

---

## 35. What does `top -bn1` mean?

**Answer:**

- `-b` → Batch mode
- `-n1` → Display output once

Example:

```bash
top -bn1
```

This format is commonly used in shell scripts.

---

## 36. What is a PID?

**Answer:**

PID stands for **Process ID**.

Every running process in Linux has a unique PID.

Check:

```bash
ps aux
```

---

## 37. Why do we monitor processes?

**Answer:**

Monitoring processes helps to:

- Find high CPU usage
- Find high memory usage
- Detect unwanted applications
- Improve system performance

---

## 38. What is system performance?

**Answer:**

System performance refers to how efficiently a computer uses its resources.

It depends on:

- CPU
- Memory
- Disk
- Running processes
- Network

---

## 39. What is resource utilization?

**Answer:**

Resource utilization means how much of the system resources are currently being used.

Examples:

- CPU utilization
- Memory utilization
- Disk utilization

---

## 40. Why is disk space important?

**Answer:**

If disk space becomes full:

- Applications may stop working
- Logs cannot be written
- System performance decreases

Regular monitoring helps prevent these issues.

---

## 41. What are system resources?

**Answer:**

System resources include:

- CPU
- RAM
- Disk
- Network
- Running processes

These resources are monitored to maintain system health.

---

## 42. Why do administrators generate server health reports?

**Answer:**

Server health reports help administrators:

- Monitor system performance
- Detect problems early
- Troubleshoot issues
- Maintain server reliability

---

## 43. Why do we use shell scripts for monitoring?

**Answer:**

Shell scripts automate monitoring tasks.

Benefits:

- Saves time
- Reduces manual work
- Generates consistent reports
- Improves productivity

---

## 44. What are the benefits of server health monitoring?

**Answer:**

Benefits include:

- Better performance
- Early issue detection
- Reduced downtime
- Efficient resource usage
- Improved system reliability

---

## 45. Which commands did you use in your Day-14 project?

**Answer:**

Commands used:

```bash
hostname
top
free
df
uptime
ps
grep
head
chmod
nano
```

These commands were used to monitor server resources and automate health checks.
