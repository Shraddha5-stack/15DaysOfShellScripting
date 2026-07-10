# 📘 Day 1 - Interview Questions & Answers

## Introduction

This document contains beginner-friendly interview questions and answers related to Linux, Shell, Bash, and Shell Scripting. These questions are useful for Linux, DevOps, and Cloud interviews.

---

# Basic Interview Questions

## 1. What is Linux?

**Answer:**

Linux is a free and open-source operating system that manages computer hardware and software resources. It provides a platform to run applications and is widely used in servers, cloud computing, and DevOps.

---

## 2. What is UNIX?

**Answer:**

UNIX is a multiuser, multitasking operating system developed at Bell Labs. It inspired many modern operating systems, including Linux.

---

## 3. What is a Shell?

**Answer:**

A Shell is a command-line interpreter that acts as an interface between the user and the Linux kernel. It accepts user commands, passes them to the kernel, and displays the output.

---

## 4. What is Bash?

**Answer:**

Bash (Bourne Again Shell) is the most commonly used shell in Linux. It is used to execute commands and write shell scripts.

---

## 5. What is Shell Scripting?

**Answer:**

Shell scripting is the process of writing multiple shell commands into a file so they can be executed automatically.

---

## 6. Why do we use Shell Scripting?

**Answer:**

We use Shell Scripting to automate repetitive tasks, reduce manual effort, save time, and improve productivity.

---

## 7. What is a Script?

**Answer:**

A script is a text file containing a sequence of commands that are executed automatically by an interpreter.

---

## 8. What is Shebang?

**Answer:**

The shebang (`#!/bin/bash`) is the first line of a shell script that specifies which interpreter should execute the script.

---

## 9. What is the purpose of chmod +x?

**Answer:**

`chmod +x` grants execute permission to a file, allowing it to be run as a program.

---

## 10. What is the difference between Terminal and Shell?

**Answer:**

A Terminal is an application where users type commands, while a Shell is the program that interprets and executes those commands.

---

# Intermediate Interview Questions

## 11. Name different types of Shell.

**Answer:**

- Bourne Shell (sh)
- Bash
- Korn Shell (ksh)
- C Shell (csh)
- Tcsh
- Z Shell (zsh)
- Fish

---

## 12. How do you check your current shell?

```bash
echo $SHELL
```

---

## 13. How do you check the Bash version?

```bash
bash --version
```

---

## 14. What is a variable?

**Answer:**

A variable is a named storage location used to store and reuse data in a shell script.

---

## 15. What are environment variables?

**Answer:**

Environment variables are predefined variables provided by the operating system, such as `HOME`, `USER`, `PATH`, and `SHELL`.

---

## 16. What is hard coding?

**Answer:**

Hard coding means using fixed values directly in a script instead of variables.

---

## 17. What is a comment?

**Answer:**

A comment is explanatory text ignored by the shell during execution. It improves code readability.

---

## 18. Difference between ./script.sh and bash script.sh?

**Answer:**

`./script.sh` requires execute permission and uses the interpreter specified by the shebang. `bash script.sh` explicitly runs the script with Bash and does not require execute permission.

---

# Practical Questions

## 19. How do you create a shell script?

1. Create a file:
   ```bash
   nano hello.sh
   ```
2. Add the shebang and commands.
3. Save the file.
4. Make it executable:
   ```bash
   chmod +x hello.sh
   ```
5. Run it:
   ```bash
   ./hello.sh
   ```

---

## 20. Which command displays the current working directory?

```bash
pwd
```

---

## 21. Which command displays the current user?

```bash
whoami
```

---

## 22. Which command displays today's date?

```bash
date
```

---

## 23. Which command displays the system hostname?

```bash
hostname
```

---

# Scenario-Based Questions

## 24. You get "Permission denied" when running a script. What will you do?

**Answer:**

Check if the script has execute permission. If not, run:

```bash
chmod +x script.sh
```

---

## 25. You forget to add a shebang. What happens?

**Answer:**

The script may not execute with the intended interpreter when run directly. Adding a shebang ensures the correct interpreter is used.

---

# Rapid Fire Questions

- What does Bash stand for?
- What is Linux?
- What is UNIX?
- What is a Shell?
- What is Shell Scripting?
- What is Shebang?
- Why do we use `chmod +x`?
- What is a variable?
- What is a comment?
- Which command shows the current shell?
