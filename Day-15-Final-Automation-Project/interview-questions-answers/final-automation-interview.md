# Day-15 Final Automation Project

# Interview Questions and Answers

---

## 1. What is automation in Linux?

**Answer:**

Automation is the process of using scripts or tools to perform repetitive tasks automatically without manual intervention.

Examples:

- System monitoring
- User management
- Backup creation
- Log cleanup

---

## 2. Why is shell scripting used for automation?

**Answer:**

Shell scripting automates repetitive Linux tasks, saves time, reduces human errors, and improves productivity.

---

## 3. What is a menu-driven shell script?

**Answer:**

A menu-driven shell script allows users to select different options from a menu to perform various tasks.

Example:

- System Information
- Disk Usage
- Memory Usage
- Exit

---

## 4. Which loop is commonly used in menu-driven scripts?

**Answer:**

The `while` loop is commonly used because it keeps displaying the menu until the user chooses to exit.

---

## 5. Why is the `case` statement used?

**Answer:**

The `case` statement is used to execute different actions based on the user's choice. It is cleaner and easier to manage than multiple `if-else` statements.

---

## 6. What is the purpose of the `read` command?

**Answer:**

The `read` command accepts input from the user.

Example:

```bash
read -p "Enter your choice: " choice
```

---

## 7. What does `chmod +x` do?

**Answer:**

It gives execute permission to a script so it can be run directly.

Example:

```bash
chmod +x script.sh
```

---

## 8. How do you execute a shell script?

**Answer:**

```bash
./script.sh
```

---

## 9. Which command displays disk usage?

**Answer:**

```bash
df -h
```

The `-h` option displays sizes in a human-readable format.

---

## 10. Which command displays memory usage?

**Answer:**

```bash
free -h
```

---

## 11. Which command displays CPU information?

**Answer:**

```bash
lscpu
```

---

## 12. Which command shows CPU usage?

**Answer:**

```bash
top
```

or

```bash
top -bn1
```

---

## 13. Which command creates compressed backups?

**Answer:**

```bash
tar -czf backup.tar.gz folder_name
```

---

## 14. What does the `tar` command do?

**Answer:**

It creates, extracts, and compresses archive files.

---

## 15. What is the purpose of the `find` command?

**Answer:**

It searches for files and directories based on different conditions.

Example:

```bash
find /var/log -name "*.log"
```

---

## 16. How do you delete files older than 7 days?

**Answer:**

```bash
find /path -type f -mtime +7 -delete
```

---

## 17. What does `whoami` display?

**Answer:**

It displays the current logged-in user.

---

## 18. What does the `who` command display?

**Answer:**

It shows all users currently logged into the system.

---

## 19. How do you count the total number of users?

**Answer:**

```bash
cut -d: -f1 /etc/passwd | wc -l
```

---

## 20. What is `/etc/passwd`?

**Answer:**

It is a system file that stores information about user accounts.

---

## 21. Why are comments used in shell scripts?

**Answer:**

Comments improve readability and help explain the purpose of the code.

Example:

```bash
# Display memory usage
```

---

## 22. What is the purpose of modular scripting?

**Answer:**

Modular scripting divides a large project into smaller scripts, making the code easier to maintain and reuse.

---

## 23. Why is input validation important?

**Answer:**

It prevents invalid input and reduces errors during script execution.

---

## 24. What is the purpose of the exit option in a menu?

**Answer:**

It allows the user to terminate the program safely.

---

## 25. What did you learn from the Final Automation Project?

**Answer:**

I learned how to:

- Build menu-driven shell scripts
- Automate Linux administration tasks
- Monitor system resources
- Create backups
- Clean old log files
- Generate user reports
- Organize multiple scripts into one project
