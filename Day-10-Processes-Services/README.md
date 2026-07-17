# Day 10: Processes and Services

## 📌 Overview

In Day 10 of the Shell Scripting journey, we learned how to manage Linux processes and services using Bash scripts.

Processes are running instances of programs, while services are background programs that provide system functionality.

---

# Topics Covered

## 1. Process Management

Learned commands:

* `ps`
* `ps aux`
* `pgrep`
* `kill`
* `top`

## 2. Service Management

Learned commands:

* `systemctl status`
* `systemctl is-active`
* `systemctl start`
* `systemctl stop`
* `systemctl restart`
* `systemctl enable`

---

# Scripts

## 1. ps_example.sh

### Purpose:

Displays currently running processes and detailed process information.

### Commands used:

```bash
ps
ps aux
```

---

## 2. process_check.sh

### Purpose:

Checks whether a specific process is running.

### Commands used:

```bash
pgrep
```

---

## 3. kill_example.sh

### Purpose:

Creates a background process and terminates it using PID.

### Concepts learned:

* Background process using `&`
* Getting PID using `$!`
* Stopping process using `kill`

Example:

```bash
sleep 300 &
kill PID
```

---

## 4. top_example.sh

### Purpose:

Displays real-time system process monitoring.

Command:

```bash
top
```

Shows:

* CPU usage
* Memory usage
* Running processes
* Process IDs

---

## 5. service_check.sh

### Purpose:

Checks the status of Linux services.

Command:

```bash
systemctl status ssh
```

---

## 6. service_control.sh

### Purpose:

Checks whether a service is active.

Command:

```bash
systemctl is-active ssh
```

---

# Folder Structure

```text
Day-10-Processes-Services
├── README.md
├── screenshots
│   ├── final-output.png
│   ├── kill-example.png
│   ├── process-check.png
│   ├── process-list.png
│   ├── service-check.png
│   ├── service-control.png
│   └── top-monitoring.png
└── scripts
    ├── kill_example.sh
    ├── process_check.sh
    ├── ps_example.sh
    ├── service_check.sh
    ├── service_control.sh
    └── top_example.sh
```

---

# Interview Questions and Answers

## 1. What is a process in Linux?

**Answer:**

A process is a running instance of a program. Every process has a unique Process ID (PID).

Example:

```bash
ps aux
```

---

## 2. What is PID?

**Answer:**

PID stands for Process ID. It is a unique number assigned to every running process.

Example:

```text
firefox PID: 3443
```

---

## 3. Difference between ps and ps aux?

**Answer:**

`ps` shows processes running in the current terminal.

`ps aux` shows all running processes from all users with detailed information.

---

## 4. How do you find a running process?

**Answer:**

Using:

```bash
pgrep process_name
```

Example:

```bash
pgrep firefox
```

---

## 5. How do you terminate a process?

**Answer:**

Using the kill command:

```bash
kill PID
```

Example:

```bash
kill 1234
```

---

## 6. What is the top command?

**Answer:**

`top` is a real-time monitoring tool that shows CPU, memory usage, and running processes.

---

## 7. What is a service in Linux?

**Answer:**

A service is a background program that runs continuously and provides system functionality.

Examples:

* SSH
* Apache
* MySQL

---

## 8. What is systemctl?

**Answer:**

`systemctl` is a command used to manage system services controlled by systemd.

Examples:

```bash
systemctl status ssh
systemctl restart ssh
```

---

## 9. Difference between process and service?

**Answer:**

| Process                       | Service                   |
| ----------------------------- | ------------------------- |
| Running instance of a program | Background system program |
| Has PID                       | Managed by systemctl      |
| Can start and stop anytime    | Usually runs continuously |

---

## 10. How do you check if a service is running?

**Answer:**

Command:

```bash
systemctl is-active service_name
```

Example:

```bash
systemctl is-active ssh
```

---

# Day 10 Summary

✅ Learned Linux process management
✅ Learned process monitoring
✅ Learned killing processes
✅ Learned service management using systemctl
✅ Created Bash automation scripts

Next: **Day 11 - System Administration**
