# 📘 Day 1 - Linux Commands Cheat Sheet

---

# Introduction

Linux commands are instructions that allow users to interact with the operating system through the command line.

They help perform tasks such as:

- Navigating directories
- Creating files
- Managing permissions
- Viewing system information
- Running shell scripts

Knowing Linux commands is an essential skill for Linux administrators and DevOps engineers.

---

# Command Format

Every Linux command generally follows this structure:

```text
command [options] [arguments]
```

Example:

```bash
ls -l Documents
```

- `ls` → Command
- `-l` → Option
- `Documents` → Argument

---

# 1. pwd (Print Working Directory)

## Purpose

Displays the current directory.

## Syntax

```bash
pwd
```

## Example

```bash
pwd
```

## Sample Output

```text
/home/shraddha/15DaysOfShellScripting
```

---

# 2. ls

## Purpose

Lists files and directories.

## Syntax

```bash
ls
```

## Example

```bash
ls
```

## Sample Output

```text
README.md
Day-01-Shell-Basics
LICENSE
```

---

# 3. ls -l

## Purpose

Displays files in long listing format.

## Syntax

```bash
ls -l
```

## Shows

- Permissions
- Owner
- Group
- Size
- Date
- Filename

---

# 4. ls -a

## Purpose

Shows hidden files.

## Syntax

```bash
ls -a
```

Example output:

```text
.
..
.git
README.md
```

---

# 5. cd

## Purpose

Changes the current directory.

## Syntax

```bash
cd directory_name
```

Example:

```bash
cd Day-01-Shell-Basics
```

---

# 6. mkdir

## Purpose

Creates a new directory.

## Syntax

```bash
mkdir folder_name
```

Example:

```bash
mkdir scripts
```

---

# 7. touch

## Purpose

Creates an empty file.

## Syntax

```bash
touch filename
```

Example:

```bash
touch hello.sh
```

---

# 8. clear

## Purpose

Clears the terminal screen.

## Syntax

```bash
clear
```

---

# 9. history

## Purpose

Displays previously executed commands.

## Syntax

```bash
history
```

---

# 10. whoami

## Purpose

Displays the current logged-in user.

## Syntax

```bash
whoami
```

Sample output:

```text
shraddha
```

---

# 11. echo

## Purpose

Displays text or variable values.

## Syntax

```bash
echo "Hello"
```

Example:

```bash
echo "Welcome to Shell Scripting"
```

Output:

```text
Welcome to Shell Scripting
```

---

# 12. cat

## Purpose

Displays file contents.

## Syntax

```bash
cat filename
```

Example:

```bash
cat hello.sh
```

---

# 13. nano

## Purpose

Opens a file in the Nano text editor.

## Syntax

```bash
nano filename
```

Example:

```bash
nano hello.sh
```

---

# 14. chmod

## Purpose

Changes file permissions.

## Syntax

```bash
chmod +x filename
```

Example:

```bash
chmod +x hello.sh
```

---

# 15. ./script.sh

## Purpose

Executes a shell script.

## Syntax

```bash
./script.sh
```

Example:

```bash
./hello.sh
```

---

# 16. bash script.sh

## Purpose

Runs a shell script using the Bash interpreter.

## Syntax

```bash
bash script.sh
```

---

# 17. sh script.sh

## Purpose

Runs a shell script using the `sh` shell.

## Syntax

```bash
sh script.sh
```

---

# 18. which

## Purpose

Shows the location of a command.

## Syntax

```bash
which bash
```

Sample output:

```text
/usr/bin/bash
```

---

# 19. date

## Purpose

Displays the current system date and time.

## Syntax

```bash
date
```

---

# 20. hostname

## Purpose

Displays the system hostname.

## Syntax

```bash
hostname
```

---

# Quick Revision Table

| Command | Purpose |
|----------|---------|
| pwd | Show current directory |
| ls | List files |
| ls -l | Long listing |
| ls -a | Show hidden files |
| cd | Change directory |
| mkdir | Create directory |
| touch | Create file |
| nano | Edit file |
| cat | Display file |
| echo | Print text |
| chmod +x | Make script executable |
| ./script.sh | Execute script |
| bash script.sh | Run with Bash |
| history | Show command history |
| whoami | Current user |
| which | Command location |
| date | Current date |
| hostname | System name |
| clear | Clear terminal |

---

# Key Takeaways

- Linux commands help interact with the operating system.
- Understanding command syntax is essential.
- Practice commands regularly to become comfortable with the terminal.
- These commands form the foundation for Shell Scripting and Linux administration.
