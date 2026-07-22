# Day-15 Final Automation Project

## Project Overview

The Final Automation Project combines multiple shell scripts into a single menu-driven automation toolkit. It helps perform common Linux system administration tasks such as checking system information, monitoring resources, creating backups, cleaning log files, and generating user reports.

This project demonstrates practical Bash scripting concepts learned throughout the 15-Day Shell Scripting Challenge.

---

## Objectives

- Automate common Linux administration tasks
- Practice writing modular shell scripts
- Create a menu-driven automation application
- Improve Bash scripting skills
- Learn real-world system monitoring and maintenance

---

## Project Structure

```
Day-15-Final-Automation-Project
├── README.md
├── interview-questions-answers
│   └── final-automation-interview.md
├── screenshots
│   ├── backup-home.png
│   ├── cpu-check.png
│   ├── disk-check.png
│   ├── final-automation-menu.png
│   ├── log-cleanup.png
│   ├── memory-check.png
│   ├── system-info.png
│   └── user-report.png
└── scripts
    ├── backup_home.sh
    ├── cpu_check.sh
    ├── disk_check.sh
    ├── final_automation.sh
    ├── log_cleanup.sh
    ├── memory_check.sh
    ├── system_info.sh
    └── user_report.sh
```

---

## Scripts Included

### 1. system_info.sh

Displays basic system information.

Features:

- Hostname
- Current user
- Operating system
- Kernel version
- System uptime

---

### 2. disk_check.sh

Displays disk usage information.

Features:

- Disk usage
- Available space
- Mounted file systems

Command Used:

```bash
df -h
```

---

### 3. memory_check.sh

Displays memory usage.

Features:

- Total memory
- Used memory
- Free memory

Command Used:

```bash
free -h
```

---

### 4. cpu_check.sh

Displays CPU load and processor information.

Commands Used:

```bash
top
lscpu
```

---

### 5. backup_home.sh

Creates a compressed backup archive of the project.

Command Used:

```bash
tar -czf
```

---

### 6. log_cleanup.sh

Deletes old log files from a specified directory.

Commands Used:

```bash
find
```

Features:

- Search log files
- Delete files older than 7 days
- User confirmation before deletion

---

### 7. user_report.sh

Displays user information.

Features:

- Current user
- Logged-in users
- Total system users
- User account list

Commands Used:

```bash
whoami
who
cut
wc
```

---

### 8. final_automation.sh

A menu-driven automation toolkit that allows users to execute all scripts from one interface.

Features:

- Interactive menu
- Easy navigation
- Runs all automation scripts
- Exit option

---

## Commands Used

- hostname
- whoami
- uname
- uptime
- df
- free
- top
- lscpu
- tar
- find
- who
- cut
- wc
- chmod
- case
- while
- read

---

## How to Run

Navigate to the scripts directory:

```bash
cd scripts
```

Make all scripts executable:

```bash
chmod +x *.sh
```

Run the final automation script:

```bash
./final_automation.sh
```

Select the desired option from the menu.

---

## Screenshots

The screenshots folder contains the output of all scripts.

- System Information
- Disk Usage
- Memory Usage
- CPU Usage
- Backup Project
- Log Cleanup
- User Report
- Final Automation Menu

---

## Learning Outcomes

After completing this project, I learned:

- Bash scripting fundamentals
- Linux system administration
- Process automation
- Menu-driven scripting
- Backup automation
- Log management
- User management
- File handling
- Resource monitoring
- Script organization
- Git and GitHub workflow

---

## Conclusion

This Final Automation Project combines the concepts learned throughout the 15-Day Shell Scripting Challenge into a single practical application. It demonstrates how Bash scripting can automate routine Linux administration tasks, improve productivity, and simplify system management.
