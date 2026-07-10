# 📘 Day 1 - Practice Exercises

## Objective

The purpose of these exercises is to strengthen your understanding of Linux basics, Shell, Bash, Shell Scripting, variables, comments, and script execution.

Try solving each exercise on your own before looking at the solution or moving to the next day.

---

# Exercise 1 - Print Your Name

### Task

Create a shell script that prints:

```
Hello, My name is Shraddha
```

### Concepts Practiced

- Shebang
- echo

---

# Exercise 2 - Print Multiple Lines

### Task

Write a script that displays:

```
Welcome to Shell Scripting
This is Day 1
I am learning Bash
```

### Concepts Practiced

- echo
- Multiple statements

---

# Exercise 3 - Use Variables

### Task

Create variables for:

- Name
- City
- Course

Print all three values.

Example Output:

```
Name : Shraddha
City : Pune
Course : Shell Scripting
```

---

# Exercise 4 - Use Environment Variables

### Task

Display the following environment variables:

```bash
echo $HOME
echo $USER
echo $PWD
echo $SHELL
```

### Questions

- What is your home directory?
- Which shell are you using?
- What is your current working directory?

---

# Exercise 5 - Add Comments

### Task

Create a script containing:

- A single-line comment
- Multiple comments explaining different sections
- A working `echo` command

---

# Exercise 6 - Create and Run a Script

### Task

Create a file named:

```bash
practice.sh
```

Add:

```bash
#!/bin/bash

echo "Practice makes perfect!"
```

Run the script.

---

# Exercise 7 - Make a Script Executable

### Task

Make `practice.sh` executable.

Command:

```bash
chmod +x practice.sh
```

Run:

```bash
./practice.sh
```

---

# Exercise 8 - Display System Information

### Task

Write a script that displays:

- Current User
- Current Directory
- Hostname
- Current Date

Hint:

```bash
whoami
pwd
hostname
date
```

---

# Exercise 9 - Check Bash Location

### Task

Run:

```bash
which bash
```

Questions:

- Where is Bash installed?
- Does the output match the path used in your shebang?

---

# Exercise 10 - Compare Script Execution Methods

Run the same script using:

```bash
./practice.sh
```

and

```bash
bash practice.sh
```

### Question

What difference did you observe?

---

# Bonus Challenge

Create a script named:

```text
my-profile.sh
```

The script should display:

- Your Name
- Your City
- Your Goal
- Today's Date

Example:

```
Name  : Shraddha
City  : Pune
Goal  : Become a DevOps Engineer
Date  : Fri Jul 10
```

---

# Self-Assessment Checklist

Before moving to Day 2, make sure you can:

- [ ] Explain what Linux is.
- [ ] Explain what a Shell is.
- [ ] Explain what Bash is.
- [ ] Explain what Shell Scripting is.
- [ ] Create a shell script.
- [ ] Add a shebang.
- [ ] Make a script executable.
- [ ] Run a shell script.
- [ ] Create variables.
- [ ] Use environment variables.
- [ ] Add comments.
- [ ] Use basic Linux commands.

---

# Learning Outcome

After completing these exercises, you should be able to:

- Write simple Bash scripts.
- Execute scripts correctly.
- Use variables and comments.
- Work confidently with basic Linux commands.
- Understand the basic workflow of Shell Scripting.
