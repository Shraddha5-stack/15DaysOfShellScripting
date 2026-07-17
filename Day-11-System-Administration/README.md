# Day 11: System Administration

## 📌 Overview

In Day 11 of Shell Scripting, we learned Linux system administration basics and created automation scripts to monitor system resources.

We worked with commands used by Linux administrators to check system health, hardware information, disk usage, memory, CPU, and network details.

---

# Topics Covered

## 1. System Information

Commands learned:

* `hostname`
* `uname`
* `uptime`

Purpose:

* Check system name
* View kernel information
* Monitor system running time

---

## 2. Disk Monitoring

Commands learned:

```bash
df -h
du -sh
```

Purpose:

* Check filesystem usage
* Check directory size

---

## 3. Memory Monitoring

Command:

```bash
free -h
```

Purpose:

* Display RAM and swap usage

---

## 4. CPU Information

Command:

```bash
lscpu
```

Purpose:

* Display CPU architecture and processor details

---

## 5. Network Information

Commands:

```bash
ip addr
ip link
```

Purpose:

* View IP addresses
* Check network interfaces

---

# Scripts

## system_info.sh

Displays:

* Hostname
* Kernel information
* System uptime

---

## disk_usage.sh

Displays:

* Disk filesystem usage
* Current directory size

---

## memory_check.sh

Displays:

* RAM usage
* Swap usage

---

## cpu_info.sh

Displays:

* CPU details
* System load

---

## network_info.sh

Displays:

* IP address
* Network interfaces

---

## system_health.sh

Creates a complete system health report:

Includes:

* Hostname
* Uptime
* Memory usage
* Disk usage
* Logged-in users
* Running processes

---

# Folder Structure

```text
Day-11-System-Administration
├── README.md
├── screenshots
│   ├── cpu-info.png
│   ├── disk-usage.png
│   ├── memory-check.png
│   ├── network-info.png
│   ├── system-health.png
│   └── system-info.png
└── scripts
    ├── cpu_info.sh
    ├── disk_usage.sh
    ├── memory_check.sh
    ├── network_info.sh
    ├── system_health.sh
    └── system_info.sh
```

---

# Interview Questions and Answers

## 1. What is system administration?

**Answer:**

System administration is the process of managing, maintaining, configuring, and monitoring computer systems.

---

## 2. How do you check Linux system information?

**Answer:**

Using:

```bash
uname -a
hostname
uptime
```

---

## 3. Difference between df and du?

**Answer:**

| df                          | du                        |
| --------------------------- | ------------------------- |
| Shows filesystem disk usage | Shows directory/file size |
| Works at filesystem level   | Works at folder level     |

---

## 4. What does free -h do?

**Answer:**

`free -h` displays memory usage in human-readable format.

It shows:

* Total memory
* Used memory
* Available memory
* Swap usage

---

## 5. How do you check CPU information in Linux?

**Answer:**

Using:

```bash
lscpu
```

It displays:

* CPU model
* Number of cores
* Architecture

---

## 6. How do you check IP address in Linux?

**Answer:

```bash
ip addr
```

It displays network interfaces and assigned IP addresses.

---

## 7. What is uptime command?

**Answer:**

`uptime` shows:

* How long the system has been running
* Number of logged-in users
* System load average

---

## 8. Why do we automate system monitoring?

**Answer:**

Automation helps administrators:

* Save time
* Reduce manual errors
* Monitor systems regularly
* Quickly identify problems

---

## 9. What is the purpose of ps aux?

**Answer:**

`ps aux` displays all running processes with:

* User
* PID
* CPU usage
* Memory usage
* Command details

---

## 10. What information should a system health report contain?

**Answer:**

A health report usually contains:

* CPU status
* Memory usage
* Disk usage
* Network information
* Running services
* Logged-in users

---

# Day 11 Summary

✅ Learned Linux system administration commands
✅ Created monitoring scripts
✅ Automated system health reporting
✅ Organized screenshots and documentation

Next: **Day 12 - Backup Automation**
