/# 📘 Day 1 Notes - Shell Basics

---

# Chapter 1 - Introduction to Linux

## What is Linux?

Linux is a free and open-source operating system that manages computer hardware and software resources.

It acts as a bridge between the user and the computer hardware, allowing users to run applications, manage files, and control the system.

Simply put,

> **Linux is an operating system that helps users communicate with computer hardware efficiently.**

---

## What is an Operating System?

An Operating System (OS) is system software that manages:

- CPU
- Memory
- Storage
- Files
- Hardware Devices
- Applications

Without an operating system, a computer cannot function properly.

Examples:

- Linux
- Windows
- macOS
- UNIX

---

## Why was Linux Created?

Linux was created by **Linus Torvalds** in **1991**.

His goal was to build a free operating system inspired by UNIX.

Today Linux powers:

- Cloud Platforms
- AWS Servers
- Google
- Android
- Kubernetes
- Docker
- Most Web Servers

---

## Features of Linux

- Open Source
- Free to Use
- Secure
- Stable
- Multiuser
- Multitasking
- Portable
- Powerful Command Line
- Highly Customizable

---

## Why is Linux Important in DevOps?

Almost every DevOps tool runs on Linux.

Examples:

- Docker
- Kubernetes
- Jenkins
- Ansible
- Terraform
- Git
- Nginx
- Apache

Because of this, Linux knowledge is one of the most important skills for a DevOps Engineer.

---

## Real-World Example

Imagine a restaurant.

Customers place food orders.

The chef prepares the food.

The kitchen manages everything.

In a computer:

- User → Customer
- Applications → Waiter
- Linux → Kitchen Manager
- Hardware → Kitchen Equipment

Linux manages all system resources just as a kitchen manager coordinates the entire kitchen.

---

## Interview Answer

**Q. What is Linux?**

**Answer:**

Linux is a free and open-source operating system that manages hardware resources, provides a platform to run applications, and enables users to interact with the computer through graphical or command-line interfaces. It is widely used in servers, cloud computing, and DevOps because of its stability, security, and flexibility.

---

## Key Points

- Linux is an Operating System.
- Linux was created by Linus Torvalds in 1991.
- Linux is open source.
- Linux is widely used in servers and cloud computing.
- Linux is the foundation for many DevOps tools.



---

# Chapter 2 - What is UNIX?

## What is UNIX?

UNIX is a powerful, multiuser, multitasking operating system developed in the late 1960s and early 1970s at Bell Labs by Ken Thompson, Dennis Ritchie, and their team.

It was designed to be simple, reliable, and portable, making it suitable for both personal and enterprise computing.

Many modern operating systems, including Linux and macOS, are based on UNIX concepts.

---

## History of UNIX

- Developed at Bell Labs in 1969.
- Created by Ken Thompson and Dennis Ritchie.
- Initially written in Assembly language.
- Later rewritten in the C programming language, making it portable across different hardware platforms.
- Became one of the most influential operating systems in computing history.

---

## Features of UNIX

- Multiuser
- Multitasking
- Secure
- Stable
- Portable
- Powerful command-line interface
- Strong file permission system
- Excellent networking capabilities

---

## Why Was UNIX So Popular?

UNIX became popular because it was:

- Reliable
- Efficient
- Secure
- Easy to maintain
- Suitable for servers and enterprise systems

Many universities and large companies adopted UNIX, leading to the development of many UNIX-based operating systems.

---

## UNIX Architecture

```text
+----------------------+
|       Users          |
+----------------------+
           │
           ▼
+----------------------+
|        Shell         |
+----------------------+
           │
           ▼
+----------------------+
|       Kernel         |
+----------------------+
           │
           ▼
+----------------------+
|      Hardware        |
+----------------------+
```

### Components

**Users**
- Interact with the operating system.

**Shell**
- Accepts user commands and passes them to the kernel.

**Kernel**
- The core of the operating system.
- Manages CPU, memory, files, devices, and processes.

**Hardware**
- Physical components such as CPU, RAM, disks, keyboard, and monitor.

---

## UNIX vs Linux

| UNIX | Linux |
|-------|--------|
| Developed at Bell Labs | Developed by Linus Torvalds |
| Mostly proprietary | Open source |
| Requires commercial licenses in many cases | Free to use |
| Different commercial versions available | Many community and commercial distributions |
| Mainly used in enterprise systems | Used everywhere from laptops to cloud servers |

---

## Is Linux UNIX?

No.

Linux is **not** UNIX.

Linux is a **UNIX-like operating system**.

It was built independently but follows many of the same design principles and command-line conventions as UNIX.

That is why Linux users can use many UNIX commands.

---

## Real-World Example

Imagine Toyota builds a successful car.

Years later, another company designs a new car inspired by Toyota's ideas but builds it from scratch.

The new car is not a Toyota, but it follows similar design principles.

Similarly:

- UNIX is the original operating system.
- Linux is an independently developed operating system inspired by UNIX.

---

## Interview Questions

### Q1. What is UNIX?

**Answer:**

UNIX is a multiuser, multitasking operating system developed at Bell Labs. It is known for its stability, security, and portability and has influenced many modern operating systems.

---

### Q2. Is Linux a UNIX operating system?

**Answer:**

No. Linux is not UNIX. It is a UNIX-like operating system developed independently by Linus Torvalds, following many UNIX design principles.

---

### Q3. What is the biggest difference between UNIX and Linux?

**Answer:**

UNIX is generally proprietary and commercially licensed, while Linux is open source, free to use, and maintained by a global community.

---

## Key Points

- UNIX was developed at Bell Labs.
- Ken Thompson and Dennis Ritchie were key contributors.
- UNIX introduced many concepts used in modern operating systems.
- Linux is inspired by UNIX but is not UNIX.
- Both share similar commands and architecture.




---

# Chapter 3 - What is Shell?

## What is a Shell?

A **Shell** is a command-line interpreter that acts as an interface between the **user** and the **Linux Kernel**.

It accepts commands from the user, passes them to the kernel for execution, and displays the output back to the user.

In simple words,

> **A Shell is a program that allows users to communicate with the Linux operating system.**

---

## Why Do We Need a Shell?

The kernel is the core of the operating system, but users cannot interact with it directly.

The shell provides a user-friendly interface to:

- Execute Linux commands
- Run programs
- Manage files and directories
- Automate repetitive tasks
- Write shell scripts

Without a shell, users would have no simple way to communicate with the operating system.

---

## How Does a Shell Work?

When you type a command in the terminal:

1. The shell reads your command.
2. It checks whether the command is valid.
3. If valid, it sends the request to the kernel.
4. The kernel performs the requested operation.
5. The shell displays the result to the user.

Example:

```bash
pwd
```

Flow:

```text
User
   │
   ▼
Shell
   │
   ▼
Kernel
   │
   ▼
Hardware
   │
   ▼
Kernel
   │
   ▼
Shell
   │
   ▼
User (Output)
```

---

## Shell Architecture

```text
+--------------------+
|       User         |
+--------------------+
          │
          ▼
+--------------------+
|       Shell        |
+--------------------+
          │
          ▼
+--------------------+
|      Kernel        |
+--------------------+
          │
          ▼
+--------------------+
|     Hardware       |
+--------------------+
```

---

## Responsibilities of a Shell

A shell performs many important tasks, including:

- Accepting user commands
- Running programs
- Executing shell scripts
- Managing files
- Handling environment variables
- Redirecting input and output
- Supporting pipes
- Running background processes

---

## Types of User Interfaces

Linux provides two ways to interact with the system:

### 1. CLI (Command Line Interface)

Examples:

```bash
ls
pwd
mkdir
```

Advantages:

- Fast
- Lightweight
- Powerful
- Preferred by DevOps Engineers and System Administrators

---

### 2. GUI (Graphical User Interface)

Examples:

- Ubuntu Desktop
- GNOME
- KDE Plasma

Advantages:

- Easy for beginners
- User-friendly
- Uses windows, icons, and menus

---

## Real-World Example

Imagine you visit a restaurant.

- You are the **User**.
- The **Waiter** takes your order.
- The **Chef** prepares your food.
- The **Kitchen** contains the equipment.

Similarly:

- User → You
- Shell → Waiter
- Kernel → Chef
- Hardware → Kitchen Equipment

The waiter (shell) acts as a bridge between you and the chef (kernel).

---

## Shell vs Kernel

| Shell | Kernel |
|--------|--------|
| Interface between user and kernel | Core of the operating system |
| Accepts user commands | Manages hardware resources |
| User-level program | Runs in kernel space |
| Can be changed | Essential part of the operating system |

---

## Advantages of Using a Shell

- Easy interaction with Linux
- Automation using shell scripts
- Faster administration
- Powerful command execution
- Better productivity

---

## Interview Questions

### Q1. What is a Shell?

**Answer:**

A shell is a command-line interpreter that acts as an interface between the user and the Linux kernel. It accepts user commands, sends them to the kernel for execution, and displays the output.

---

### Q2. Why do we need a Shell?

**Answer:**

We need a shell because users cannot directly communicate with the kernel. The shell provides a convenient interface for executing commands, managing files, and running applications.

---

### Q3. What are the responsibilities of a Shell?

**Answer:**

A shell accepts user commands, executes programs, manages files, runs scripts, supports input/output redirection, handles environment variables, and communicates with the kernel.

---

## Key Points

- A shell is an interface between the user and the kernel.
- It interprets and executes user commands.
- It helps automate tasks through shell scripting.
- Bash is the most commonly used shell in Linux.
- Every shell communicates with the kernel to perform operations.




---

# Chapter 5 - Bash (Bourne Again Shell)

## What is Bash?

Bash stands for **Bourne Again Shell**.

It is the most popular command-line shell in Linux and is the default shell in many Linux distributions such as Ubuntu, Debian, Red Hat, and CentOS.

Bash acts as an interface between the user and the Linux kernel. It allows users to execute commands, run programs, and automate tasks using shell scripts.

In simple words,

> **Bash is a shell that helps users communicate with the Linux operating system and automate tasks.**

---

## Why is Bash Called "Bourne Again Shell"?

The original UNIX shell was the **Bourne Shell (sh)**.

Bash was developed as an improved version of the Bourne Shell with many additional features such as:

- Command history
- Auto-completion
- Variables
- Arrays
- Functions
- Better scripting support

The name **"Bourne Again Shell"** is both a tribute to the Bourne Shell and a play on the phrase **"born again."**

---

## Why is Bash So Popular?

Bash is popular because it is:

- Free and open source
- Installed by default on many Linux systems
- Easy to learn
- Powerful for automation
- Widely supported
- Used in DevOps, Cloud, and System Administration

---

## Features of Bash

- Command history
- Tab auto-completion
- Variables
- Loops
- Conditional statements
- Functions
- Arrays
- Input and output redirection
- Pipes
- Process management
- Shell scripting support

---

## How Bash Works

When you type a command such as:

```bash
pwd
```

The process is:

```text
User
   │
   ▼
Bash Shell
   │
   ▼
Kernel
   │
   ▼
Hardware
   │
   ▼
Kernel
   │
   ▼
Bash
   │
   ▼
Output
```

Bash interprets the command, sends it to the kernel, and displays the result.

---

## Where is Bash Located?

You can check the location of Bash using:

```bash
which bash
```

Example output:

```text
/usr/bin/bash
```

---

## Check the Bash Version

To see which version of Bash is installed:

```bash
bash --version
```

Example output:

```text
GNU bash, version 5.x.x
```

---

## How to Check Your Current Shell

Run:

```bash
echo $SHELL
```

Example output:

```text
/bin/bash
```

---

## Why Do DevOps Engineers Use Bash?

Bash is widely used because it helps automate repetitive tasks.

Examples include:

- User management
- Log analysis
- Backup automation
- Service monitoring
- File management
- Deployment scripts
- Health checks
- Cron jobs

Learning Bash is an essential skill for Linux and DevOps engineers.

---

## Real-World Example

Imagine you have to create 100 user accounts.

Doing it manually would take a long time.

With Bash, you can write one script that creates all 100 users automatically.

This saves time, reduces errors, and ensures consistency.

---

## Interview Questions

### Q1. What is Bash?

**Answer:**

Bash (Bourne Again Shell) is a command-line shell and scripting language that provides an interface between the user and the Linux kernel. It is widely used for executing commands and automating tasks.

---

### Q2. Why is Bash the most commonly used shell?

**Answer:**

Bash is free, open source, available by default on many Linux distributions, easy to learn, and provides powerful scripting and automation features.

---

### Q3. How do you check the Bash version?

**Answer:**

Use the following command:

```bash
bash --version
```

---

### Q4. How do you check the current shell?

**Answer:**

Use:

```bash
echo $SHELL
```

---

## Key Points

- Bash stands for Bourne Again Shell.
- Bash is the default shell on many Linux distributions.
- Bash supports scripting and automation.
- Bash is one of the most important skills for Linux and DevOps engineers.
- Most shell scripts in this challenge will use Bash.




---

# Chapter 6 - Terminal vs Shell

## Introduction

One of the most common misconceptions among beginners is thinking that the **Terminal** and the **Shell** are the same thing.

Although they work together, they are **not the same**.

Understanding this difference is very important for Linux, Shell Scripting, and DevOps interviews.

---

# What is a Terminal?

A **Terminal** is an application (or window) that allows users to interact with the operating system using text-based commands.

It provides a place where you can type commands and see their output.

In simple words,

> **A Terminal is a program that lets you access a Shell.**

Examples of terminal applications:

- GNOME Terminal
- Konsole
- XTerm
- Tilix
- Windows Terminal
- macOS Terminal

---

# What is a Shell?

A **Shell** is a command-line interpreter.

It reads the commands typed by the user in the terminal, interprets them, sends them to the Linux kernel for execution, and displays the output.

Examples of shells:

- Bash
- Zsh
- Fish
- Korn Shell (ksh)
- Bourne Shell (sh)

---

# Relationship Between Terminal and Shell

Think of it like this:

```
User
   │
   ▼
Terminal
   │
   ▼
Shell
   │
   ▼
Kernel
   │
   ▼
Hardware
```

### Flow

1. User types a command.
2. Terminal displays the command.
3. Shell interprets the command.
4. Kernel executes it.
5. Output returns to the shell.
6. Terminal displays the result.

---

# Real-Life Example

Imagine you visit a bank.

- You → Customer
- Bank Counter → Terminal
- Bank Employee → Shell
- Bank Database → Kernel

You speak to the employee through the counter.

Similarly,

- You type commands into the Terminal.
- The Terminal passes them to the Shell.
- The Shell communicates with the Kernel.

---

# Terminal vs Shell

| Terminal | Shell |
|-----------|-------|
| An application | A command interpreter |
| Provides a window to type commands | Executes commands |
| Displays input and output | Understands and processes commands |
| Examples: GNOME Terminal, Windows Terminal | Examples: Bash, Zsh, Fish |
| Does not execute commands itself | Executes commands through the kernel |

---

# Can We Change the Shell?

Yes.

For example:

- Bash
- Zsh
- Fish

can all run inside the **same terminal application**.

The terminal remains the same, but the shell can change.

---

# How to Check Your Current Shell

Run:

```bash
echo $SHELL
```

Example output:

```text
/bin/bash
```

---

# How to Check Which Terminal You Are Using

Run:

```bash
echo $TERM
```

Example output:

```text
xterm-256color
```

---

# DevOps Perspective

DevOps engineers spend a significant amount of time working in terminals.

Typical tasks include:

- Connecting to remote servers using SSH
- Running deployment scripts
- Monitoring logs
- Managing Docker containers
- Working with Kubernetes
- Automating repetitive tasks

The **terminal** provides the workspace, while the **shell** executes the commands.

---

# Common Beginner Mistakes

❌ Thinking the Terminal and Shell are the same.

❌ Assuming Bash is the operating system.

❌ Believing the Terminal executes commands.

Remember:

- Terminal = Interface
- Shell = Interpreter
- Kernel = Executor

---

# Interview Questions

## Q1. What is a Terminal?

**Answer:**

A terminal is a software application that provides a text-based interface for users to interact with the operating system. It allows users to access a shell and execute commands.

---

## Q2. What is a Shell?

**Answer:**

A shell is a command-line interpreter that accepts user commands, passes them to the kernel for execution, and displays the output.

---

## Q3. What is the difference between a Terminal and a Shell?

**Answer:**

A terminal is an application used to enter commands, while a shell is a program that interprets and executes those commands.

---

## Q4. Can we use different shells inside the same terminal?

**Answer:**

Yes. A terminal can run different shells such as Bash, Zsh, or Fish.

---

# Quick Revision

✔ Terminal is an application.

✔ Shell is a command interpreter.

✔ Kernel executes system operations.

✔ Terminal displays the output.

✔ Bash is a shell, not a terminal.

---

# Hands-on Practice

Run the following commands:

```bash
echo $SHELL
```

```bash
echo $TERM
```

```bash
which bash
```

Observe the output and understand the difference between the terminal application and the shell you are currently using.

---

# Key Takeaways

- Terminal and Shell are different components.
- The Terminal is the interface where users type commands.
- The Shell interprets those commands.
- The Kernel performs the requested operations.
- Understanding this distinction is essential for Linux administration and DevOps.





---

# Chapter 7 - Shell Scripting

## Introduction

So far, we have learned about Linux, UNIX, Shell, Bash, and the Terminal.

Now it's time to learn how to automate tasks using **Shell Scripting**.

Shell scripting is one of the most important skills for Linux administrators, DevOps engineers, Cloud engineers, and Site Reliability Engineers (SREs).

Instead of typing commands one by one every day, we can write them once in a file and execute them whenever needed.

---

# What is Shell Scripting?

Shell Scripting is the process of writing multiple Linux commands inside a text file so they can be executed automatically by a shell.

A shell script is simply a file containing Linux commands that are executed in sequence.

In simple words,

> **Shell Scripting is a way to automate repetitive Linux tasks by writing commands in a script file.**

---

# Why Do We Need Shell Scripting?

Imagine you are a Linux administrator.

Every morning you need to:

- Check disk space
- Check memory usage
- Check CPU usage
- Verify whether the web server is running
- Create backups
- Clean old log files

You could type every command manually.

But if these tasks must be performed every day, it becomes repetitive and time-consuming.

Instead, you write one shell script.

Now you only run:

```bash
./daily-health-check.sh
```

The script performs all the tasks automatically.

This is the power of Shell Scripting.

---

# Why Do Companies Use Shell Scripting?

Organizations use shell scripts because they help:

- Save time
- Reduce manual work
- Minimize human errors
- Standardize repetitive tasks
- Automate server management
- Increase productivity
- Simplify system administration

Automation allows engineers to focus on solving bigger problems instead of repeating routine tasks.

---

# How Does Shell Scripting Work?

The process is simple:

```text
Write Script
      │
      ▼
Save Script (.sh)
      │
      ▼
Make Executable
(chmod +x)
      │
      ▼
Run Script
(./script.sh)
      │
      ▼
Shell Reads Commands
      │
      ▼
Kernel Executes Commands
      │
      ▼
Output Displayed
```

---

# Real-World Example

Suppose your company has **50 Linux servers**.

Every day you need to check:

- Available disk space
- Running services
- CPU utilization
- Memory usage
- Log files

Doing this manually on every server would take a long time.

Instead, you create a shell script that performs all these checks automatically.

This saves time and ensures consistency across all servers.

---

# Where is Shell Scripting Used?

Shell scripting is widely used for:

- System Administration
- DevOps
- Cloud Computing
- Server Monitoring
- Log Analysis
- Backup Automation
- User Management
- Software Installation
- Deployment Automation
- Cron Jobs
- Health Checks
- CI/CD Pipelines

---

# Advantages of Shell Scripting

- Easy to learn
- Saves time
- Reduces repetitive work
- Automates tasks
- Improves productivity
- Simple syntax
- Runs on most Linux systems
- Excellent for system administration

---

# Limitations of Shell Scripting

- Slower than compiled programming languages
- Not suitable for large software applications
- Debugging can become difficult in very large scripts
- Best suited for automation rather than complex application development

---

# Shell Script vs Manual Commands

| Manual Commands | Shell Script |
|-----------------|--------------|
| Commands typed one by one | Commands stored in a file |
| Time-consuming | Fast and repeatable |
| Greater chance of human error | Consistent execution |
| Difficult to repeat | Easy to reuse |

---

# How Shell Scripting Helps in DevOps

Shell scripting is used throughout the DevOps lifecycle.

Examples include:

- Starting and stopping services
- Deploying applications
- Creating backups
- Monitoring servers
- Managing Docker containers
- Automating Kubernetes tasks
- Scheduling jobs with Cron
- Processing log files

For many automation tasks, Bash is the first scripting language a DevOps engineer learns.

---

# Common Beginner Mistakes

❌ Forgetting the shebang (`#!/bin/bash`).

❌ Not making the script executable (`chmod +x script.sh`).

❌ Using spaces around the assignment operator (`name = Shraddha` instead of `name=Shraddha`).

❌ Saving the file without the `.sh` extension (the extension isn't required, but it's a common convention and makes scripts easier to recognize).

❌ Assuming scripts always need to be run with `sudo`. Use `sudo` only when the task requires elevated privileges.

---

# Interview Questions

## Q1. What is Shell Scripting?

**Answer:**

Shell scripting is the process of writing multiple Linux commands into a file so they can be executed automatically by a shell. It is mainly used to automate repetitive administrative tasks.

---

## Q2. Why do we use Shell Scripting?

**Answer:**

We use shell scripting to automate repetitive tasks, reduce manual effort, save time, improve consistency, and simplify Linux system administration.

---

## Q3. Where is Shell Scripting used?

**Answer:**

Shell scripting is used in Linux administration, DevOps, cloud computing, server monitoring, backups, deployments, log analysis, and automation.

---

## Q4. What is a Shell Script?

**Answer:**

A shell script is a text file that contains a sequence of shell commands to be executed by a shell such as Bash.

---

# Key Takeaways

- Shell Scripting is used to automate repetitive Linux tasks.
- A shell script is a file containing Linux commands.
- Bash is one of the most commonly used shells for scripting.
- Shell scripting is an essential skill for Linux and DevOps engineers.
- Automation improves efficiency, consistency, and productivity.

---

# Hands-on Practice

Create a file named:

```bash
first-script.sh
```

Add the following content:

```bash
#!/bin/bash

echo "Hello, Shell Scripting!"
echo "Welcome to Day 1."
```

Save the file, make it executable:

```bash
chmod +x first-script.sh
```

Run it:

```bash
./first-script.sh
```

Observe the output and understand each step.





---

# Chapter 8 - Script, Shebang & Script Execution

## Introduction

Now that we understand Shell Scripting, the next step is learning how a shell script is created and executed.

Every shell script follows a basic lifecycle:

Write → Save → Give Permission → Execute

Understanding this process is essential for writing reliable shell scripts.

---

# What is a Script?

A **script** is a text file that contains one or more commands written in a scripting language.

When the script is executed, the commands are run one after another automatically.

A shell script is simply a file that contains shell commands.

Example:

```bash
#!/bin/bash

echo "Hello"
echo "Welcome to Shell Scripting"
```

Instead of typing each command manually, we save them in a file and execute the file whenever needed.

---

# Why is it Called a Script?

The word **script** comes from the idea of a written set of instructions.

Think about a movie script.

A movie script tells actors:

- What to say
- What to do
- In what order

Similarly,

A shell script tells the computer:

- Which command to execute
- In which order
- What action to perform

---

# What is Shebang?

The first line of most shell scripts is:

```bash
#!/bin/bash
```

This line is called the **Shebang** (or **Hashbang**).

It tells the operating system **which interpreter should execute the script**.

Without a shebang, the operating system may not know which program should interpret the commands when you execute the script directly.

---

# Breaking Down the Shebang

```text
#!      → Indicates that an interpreter should be used.
/bin/bash → Path to the Bash interpreter.
```

Together:

```bash
#!/bin/bash
```

means:

> "Execute this script using the Bash shell."

---

# Why Do We Need a Shebang?

The shebang ensures that the correct interpreter is used when the script is executed directly.

Benefits include:

- Consistent behavior
- Better portability
- Clear interpreter selection
- Easier collaboration

---

# Where is Bash Located?

Find the Bash executable:

```bash
which bash
```

Example:

```text
/usr/bin/bash
```

On many systems, Bash may also be available at:

```text
/bin/bash
```

---

# Using env in the Shebang

Another common form is:

```bash
#!/usr/bin/env bash
```

Why use this?

`env` searches your environment to locate the Bash executable.

This is often more portable across different Linux and UNIX systems.

---

# Script Execution Process

The lifecycle of a shell script is:

```text
Write the Script
        │
        ▼
Save the File
(example.sh)
        │
        ▼
Add Execute Permission
(chmod +x example.sh)
        │
        ▼
Run the Script
(./example.sh)
        │
        ▼
Shell Reads the Script
        │
        ▼
Kernel Executes Commands
        │
        ▼
Display Output
```

---

# File Permissions

Every file in Linux has permissions.

There are three basic permissions:

| Symbol | Meaning |
|--------|---------|
| r | Read |
| w | Write |
| x | Execute |

Without execute permission, a script cannot be run directly.

---

# What Does chmod +x Mean?

```bash
chmod +x script.sh
```

Explanation:

- `chmod` → Change file permissions.
- `+` → Add a permission.
- `x` → Execute permission.

After running this command, the script becomes executable.

---

# Different Ways to Execute a Script

## Method 1

```bash
./script.sh
```

Requirements:

- Execute permission (`chmod +x`)
- Correct shebang

This is the most common and recommended method.

---

## Method 2

```bash
bash script.sh
```

Here, you explicitly tell Bash to run the script.

The execute permission is **not required** because Bash reads the file directly.

---

## Method 3

```bash
sh script.sh
```

This runs the script using the `sh` shell.

Be careful: `sh` may behave differently from Bash, especially if your script uses Bash-specific features.

---

# Difference Between ./script.sh and bash script.sh

| ./script.sh | bash script.sh |
|--------------|----------------|
| Requires execute permission | Does not require execute permission |
| Uses the interpreter specified by the shebang | Uses Bash regardless of the shebang |
| Common for executable scripts | Useful for testing or running scripts directly with Bash |

---

# Common Errors

## Error 1

```text
Permission denied
```

Cause:

Execute permission is missing.

Solution:

```bash
chmod +x script.sh
```

---

## Error 2

```text
No such file or directory
```

Cause:

Wrong file name or incorrect path.

Solution:

Check the file name and current directory with:

```bash
pwd
ls
```

---

## Error 3

```text
command not found
```

Cause:

Typing the wrong command or forgetting `./` when trying to run a script in the current directory.

Solution:

Run:

```bash
./script.sh
```

---

# Real-World DevOps Example

Imagine a company deploys a web application every day.

Instead of manually running 20 commands, the DevOps engineer writes a deployment script:

```bash
deploy.sh
```

The script:

- Pulls the latest code
- Installs dependencies
- Restarts services
- Verifies application health

Running:

```bash
./deploy.sh
```

completes the entire deployment process consistently and quickly.

---

# Common Beginner Mistakes

❌ Forgetting the shebang.

❌ Forgetting `chmod +x`.

❌ Running the script without `./` from the current directory.

❌ Using `sh` for a Bash-specific script.

❌ Saving the script with syntax errors.

---

# Interview Questions

## Q1. What is a script?

**Answer:**

A script is a text file containing a sequence of commands that are executed automatically by an interpreter.

---

## Q2. What is a shebang?

**Answer:**

A shebang is the first line of a script (for example, `#!/bin/bash`) that tells the operating system which interpreter should execute the script.

---

## Q3. Why do we use `chmod +x`?

**Answer:**

`chmod +x` adds execute permission to a file, allowing it to be run directly as a program.

---

## Q4. What is the difference between `./script.sh` and `bash script.sh`?

**Answer:**

`./script.sh` executes the script as a program and requires execute permission. `bash script.sh` runs the script using the Bash interpreter and does not require execute permission.

---

# Key Takeaways

- A script is a file containing commands.
- The shebang specifies the interpreter.
- `chmod +x` grants execute permission.
- `./script.sh` executes the script directly.
- `bash script.sh` explicitly runs the script with Bash.
- Understanding script execution is essential for Linux automation and DevOps.




---

# Chapter 9 - Variables & Comments

## Introduction

Almost every shell script needs to store and reuse data. For example, you may need to store a username, a file name, a directory path, or the current date.

Instead of writing the same value repeatedly, we store it in a **variable**.

Variables make scripts easier to read, update, and maintain.

Comments, on the other hand, help explain the purpose of the code. They are ignored by the shell but are very useful for anyone reading or maintaining the script.

---

# What is a Variable?

A **variable** is a named storage location used to store data that can be accessed and reused later in a script.

Think of a variable as a labeled box.

You put a value inside the box and use the label whenever you need that value.

Example:

```bash
name="Shraddha"
```

Here:

- `name` → Variable name
- `"Shraddha"` → Value stored in the variable

To display its value:

```bash
echo $name
```

Output:

```text
Shraddha
```

---

# Why Do We Use Variables?

Variables help us:

- Avoid repeating values
- Make scripts easier to update
- Improve readability
- Store user input
- Store command output
- Reuse information throughout the script

Without variables, scripts become repetitive and difficult to maintain.

---

# Syntax of a Variable

```bash
variable_name=value
```

Example:

```bash
city="Pune"
age=25
course="Shell Scripting"
```

To access a variable:

```bash
echo $city
echo $age
echo $course
```

---

# Rules for Naming Variables

✔ Variable names can contain:

- Letters
- Numbers
- Underscores (`_`)

✔ Variable names should begin with a letter or an underscore.

❌ Variable names should not:

- Start with a number
- Contain spaces
- Use special characters such as `@`, `#`, `%`, `&`

Correct:

```bash
name="Shraddha"
user_name="shraddha"
age=25
```

Incorrect:

```bash
1name="Shraddha"
user name="Shraddha"
```

---

# Important Rule

Do **not** leave spaces around the assignment operator.

Correct:

```bash
name="Shraddha"
```

Incorrect:

```bash
name = "Shraddha"
```

The shell interprets these differently, and the second example will result in an error.

---

# Types of Variables

## 1. User-Defined Variables

Created by the user inside a script.

Example:

```bash
project="15DaysOfShellScripting"

echo $project
```

---

## 2. Environment Variables

Provided by the operating system and available to shell sessions.

Examples:

```bash
echo $HOME
echo $USER
echo $SHELL
echo $PWD
echo $PATH
```

These variables provide useful information about your environment.

---

## 3. Special Variables

Shell provides special variables for scripts.

| Variable | Meaning |
|----------|---------|
| `$0` | Script name |
| `$1` | First command-line argument |
| `$2` | Second command-line argument |
| `$#` | Number of arguments |
| `$@` | All arguments (preserves each one separately when quoted) |
| `$*` | All arguments (treated as a single string when quoted) |
| `$$` | Current script's Process ID (PID) |
| `$?` | Exit status of the last command |

Example:

```bash
echo "Script Name: $0"
echo "First Argument: $1"
echo "Number of Arguments: $#"
```

---

# What is Hard Coding?

Hard coding means writing fixed values directly in the script.

Example:

```bash
echo "Welcome Shraddha"
```

The name is fixed.

A better approach is:

```bash
name="Shraddha"

echo "Welcome $name"
```

Using variables makes the script flexible and easier to maintain.

---

# What are Comments?

Comments are notes written inside a script to explain the code.

The shell ignores comments during execution.

Comments make scripts easier to understand and maintain.

---

# Single-Line Comment

Use `#`.

Example:

```bash
# This is a single-line comment

echo "Hello"
```

---

# Multi-Line Comments

Bash does not have a true multi-line comment syntax.

A common approach is:

```bash
: '
This is a block of text.
It is often used as a multi-line comment.
'
```

Another option is to use multiple single-line comments:

```bash
# Line 1
# Line 2
# Line 3
```

---

# Real-World Example

Imagine an employee ID card.

Instead of remembering every employee's personal details, you use the employee ID to look up the information.

Similarly:

Variable Name → Employee ID

Variable Value → Employee Information

The variable name acts as a reference to the stored value.

---

# DevOps Perspective

Variables are widely used in DevOps automation.

Examples include:

- Server names
- IP addresses
- File paths
- Backup locations
- Docker image names
- Kubernetes namespaces
- AWS regions
- Environment names (Development, Testing, Production)

Using variables makes scripts reusable across different environments.

---

# Common Beginner Mistakes

❌ Adding spaces around `=`.

❌ Forgetting `$` when reading a variable.

❌ Using invalid variable names.

❌ Overwriting important environment variables unintentionally.

❌ Hard coding values that should be configurable.

---

# Interview Questions

## Q1. What is a variable?

**Answer:**

A variable is a named storage location used to store data that can be reused throughout a shell script.

---

## Q2. What are environment variables?

**Answer:**

Environment variables are predefined variables provided by the operating system that store information about the user's environment, such as `HOME`, `USER`, `PATH`, and `SHELL`.

---

## Q3. What is hard coding?

**Answer:**

Hard coding means placing fixed values directly in a script instead of using variables. It reduces flexibility and makes scripts harder to maintain.

---

## Q4. What is a comment in Shell Scripting?

**Answer:**

A comment is a line or block of text that explains the script. Comments are ignored by the shell during execution.

---

# Hands-on Practice

Run the following commands:

```bash
echo $HOME
echo $USER
echo $PWD
echo $SHELL
echo $PATH
```

Create a file named:

```bash
variables.sh
```

Add:

```bash
#!/bin/bash

name="Shraddha"
course="Shell Scripting"

echo "Name: $name"
echo "Course: $course"
```

Make it executable:

```bash
chmod +x variables.sh
```

Run:

```bash
./variables.sh
```

Observe the output and verify that the variables are displayed correctly.

---

# Key Takeaways

- Variables store data for reuse.
- Do not put spaces around `=`.
- Use `$` to access a variable's value.
- Environment variables provide system information.
- Special variables help process command-line arguments and script status.
- Comments improve readability and maintainability.
- Variables are fundamental to writing flexible and reusable shell scripts.




---

# Chapter 10 - Day 1 Summary, Best Practices & Interview Revision

## Introduction

Congratulations!

You have completed the first day of the **15 Days of Shell Scripting Challenge**.

In this chapter, we will quickly revise everything learned in Day 1, discuss best practices, review common mistakes, and prepare for Day 2.

---

# What We Learned Today

Today we learned:

- Introduction to Linux
- What is UNIX?
- What is a Shell?
- Types of Shell
- Bash (Bourne Again Shell)
- Terminal vs Shell
- Shell Scripting
- Script
- Shebang (`#!/bin/bash`)
- Script Execution
- File Permissions
- `chmod +x`
- `./script.sh`
- Variables
- Environment Variables
- Special Variables
- Comments

---

# Day 1 Learning Flow

```text
Linux
   │
   ▼
UNIX
   │
   ▼
Shell
   │
   ▼
Bash
   │
   ▼
Terminal
   │
   ▼
Shell Script
   │
   ▼
Shebang
   │
   ▼
Permissions
   │
   ▼
Execution
   │
   ▼
Variables
   │
   ▼
Comments
```

---

# Best Practices for Writing Shell Scripts

## 1. Always Use a Shebang

```bash
#!/bin/bash
```

This ensures the correct interpreter is used.

---

## 2. Use Meaningful Variable Names

Good:

```bash
user_name="Shraddha"
backup_dir="/backup"
```

Avoid:

```bash
a="Shraddha"
x="/backup"
```

Clear names make scripts easier to understand.

---

## 3. Comment Important Sections

Explain *why* the code exists, not every obvious line.

Example:

```bash
# Create backup before deployment
cp app.conf app.conf.bak
```

---

## 4. Avoid Hard Coding

Instead of:

```bash
echo "Welcome Shraddha"
```

Use:

```bash
name="Shraddha"
echo "Welcome $name"
```

---

## 5. Test Scripts Before Using Them

Run your scripts on a test system or with safe sample data before using them in production.

---

## 6. Follow Consistent Formatting

- Use proper indentation.
- Leave blank lines between logical sections.
- Group related commands together.

Readable scripts are easier to maintain.

---

# Common Beginner Mistakes

- Forgetting the shebang.
- Forgetting `chmod +x`.
- Adding spaces around `=`.
- Forgetting `$` when reading variables.
- Running a script without `./`.
- Editing system files without understanding the impact.
- Ignoring error messages instead of reading them carefully.

---

# DevOps Connection

Shell scripting is used daily by DevOps engineers for tasks such as:

- Automating deployments
- Monitoring servers
- Creating backups
- Managing users
- Rotating log files
- Running scheduled jobs with Cron
- Starting and stopping services
- Working with Docker and Kubernetes
- Building CI/CD pipelines

Learning Bash provides a strong foundation for these real-world tasks.

---

# Revision Checklist

Before moving to Day 2, make sure you can answer these questions confidently:

- What is Linux?
- What is UNIX?
- What is a Shell?
- What is Bash?
- What is the difference between a Terminal and a Shell?
- What is Shell Scripting?
- What is a Script?
- What is a Shebang?
- Why do we use `chmod +x`?
- What is the difference between `./script.sh` and `bash script.sh`?
- What is a Variable?
- What is an Environment Variable?
- What is a Comment?

If you can explain these in your own words, you're ready for Day 2.

---

# Mini Self-Assessment Quiz

### Q1. What does Bash stand for?

<details>
<summary>Answer</summary>

Bourne Again Shell.

</details>

---

### Q2. Which command gives execute permission?

<details>
<summary>Answer</summary>

```bash
chmod +x filename.sh
```

</details>

---

### Q3. Which command displays your current shell?

<details>
<summary>Answer</summary>

```bash
echo $SHELL
```

</details>

---

### Q4. What is the purpose of the shebang?

<details>
<summary>Answer</summary>

It tells the operating system which interpreter should execute the script.

</details>

---

### Q5. What is the difference between a Terminal and a Shell?

<details>
<summary>Answer</summary>

A Terminal is the application where you type commands, while a Shell interprets those commands and communicates with the kernel.

</details>

---

# Interview Rapid-Fire Questions

Try answering these without looking at your notes:

1. What is Linux?
2. What is UNIX?
3. What is a Shell?
4. What are the different types of Shell?
5. Why is Bash popular?
6. What is Shell Scripting?
7. Why do we need Shell Scripting?
8. What is a Script?
9. What is a Shebang?
10. What is the purpose of `chmod +x`?
11. What is the difference between `bash script.sh` and `./script.sh`?
12. What is a Variable?
13. What are Environment Variables?
14. What are Special Variables?
15. What is a Comment?

---

# Day 1 Outcome

After completing Day 1, you should be able to:

- Explain the basics of Linux and UNIX.
- Understand how a Shell works.
- Use Bash as your default shell.
- Write and execute basic shell scripts.
- Work with variables and comments.
- Understand the script execution process.
- Explain fundamental Shell Scripting concepts in interviews.

---

# What's Next?

In **Day 2 – Variables & Operators**, you will learn:

- Arithmetic Operators
- Relational Operators
- Logical Operators
- Assignment Operators
- User Input (`read`)
- Command Substitution
- Exit Status
- Simple Calculator Scripts

These concepts will allow you to write more interactive and useful shell scripts.

---

# Final Thoughts

Shell Scripting is not just about writing commands—it is about solving problems through automation.

As you continue this challenge, focus on understanding each concept and practising regularly.

Every script you write strengthens your Linux, automation, and DevOps skills.

Keep learning, keep experimenting, and keep building!
