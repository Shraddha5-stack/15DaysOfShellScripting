# Day-11 System Administration

# Interview Questions and Answers

## 1. What is system administration?

**Answer:**

System administration is the process of managing, configuring, maintaining, and monitoring computer systems.

---

## 2. Which commands are used to check system information?

**Answer:**

Common commands:

```bash
hostname
uname -a
uptime



## 2. Which commands are used to check system information?

**Answer:**

Linux provides several commands to check system information.

Common commands:

```bash
hostname
uname -a
uptime


---

## 3. What is the difference between df and du commands?

**Answer:**

`df` shows filesystem disk usage.

Example:

```bash
df -h


---

## 4. How do you check memory usage in Linux?

**Answer:**

Linux provides the `free` command to check memory usage.

Command:

```bash
free -h


---

## 5. How do you check CPU information in Linux?

**Answer:**

Linux provides the `lscpu` command to display detailed information about the CPU.

Command:

```bash
lscpu

CPU Architecture → Type of processor architecture (x86_64, ARM, etc.)
CPU Model → Name and model of the processor.
CPU Cores → Number of available CPU cores.
Threads → Number of logical processors.
CPU Frequency → Processor speed information.
Virtualization Support → Whether the CPU supports virtualization



---

## 6. How do you check network information in Linux?

**Answer:**

Linux provides commands like `ip addr` and `ip link` to check network information.

Commands:

```bash
ip addr
ip link


---

## 7. What is a process in Linux?

**Answer:**

A process is a running instance of a program or command in a Linux system.

Whenever we start an application or execute a command, the Linux kernel creates a process.

### Explanation:

Each process has important information:

- **PID (Process ID)** → A unique number assigned to every process.
- **User** → The user who started or owns the process.
- **CPU Usage** → The amount of processor resources used by the process.
- **Memory Usage** → The amount of RAM used by the process.
- **Process State** → Current status of the process (running, sleeping, stopped, etc.).

Example:

```bash
ps aux


---

## 8. How do you check running processes in Linux?

**Answer:**

Linux provides commands like `ps aux` and `top` to view and monitor running processes.

Commands:

```bash
ps aux


---

## 9. Why is system monitoring important?

**Answer:**

System monitoring is the process of continuously checking system resources and performance to ensure the system is working properly.

### Explanation:

System monitoring helps administrators track important resources such as:

- **CPU Usage** → Checks processor workload and identifies high CPU usage.
- **Memory Usage** → Monitors RAM usage and detects memory problems.
- **Disk Usage** → Checks available storage space and prevents disk full errors.
- **Network Status** → Monitors network connectivity and performance.
- **Running Processes** → Tracks applications and services running on the system.

System administrators use monitoring to:

- Detect problems early
- Improve system performance
- Troubleshoot errors
- Prevent system failures
- Maintain system availability

Common monitoring commands:

```bash
top
free -h
df -h
ps aux
uptime


---

## 10. Why do we use shell scripts in system administration?

**Answer:**

Shell scripts are used in system administration to automate repetitive tasks and simplify system management.

### Explanation:

A shell script is a file containing a series of Linux commands that are executed automatically by the shell.

System administrators use shell scripts for tasks such as:

- **System Monitoring** → Automatically check CPU, memory, disk, and processes.
- **Backup Tasks** → Create regular backups of important files and directories.
- **System Checks** → Verify system health and resource availability.
- **User Management** → Create, modify, or remove user accounts.
- **Log Management** → Monitor and clean system log files.
- **Service Management** → Start, stop, and restart system services.

Example shell script:

```bash
#!/bin/bash

echo "Checking disk usage"

df -h

---

## 11. What command checks disk space in Linux?

**Answer:**

The `df` command is used to check filesystem disk space usage.

Command:

```bash
df -h


