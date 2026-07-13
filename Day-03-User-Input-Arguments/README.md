# Day 03 – User Input & Command Line Arguments

## 📌 Objective

In this chapter, you will learn how to make shell scripts interactive by accepting input from users and passing values through command-line arguments.

By the end of this day, you will be able to:

- Accept input from the keyboard
- Use the `read` command
- Pass arguments to shell scripts
- Work with positional parameters (`$0`, `$1`, `$2`, ...)
- Understand special variables (`$#`, `$@`, `$?`, `$$`, etc.)
- Validate user input
- Build practical automation scripts

---

# What is User Input?

User input is the information entered by a user while a shell script is running.

Instead of hardcoding values, a script can ask the user to enter them, making the script reusable and interactive.

For example, instead of writing:

```bash
NAME="Shraddha"
```

we can ask the user:

```bash
read NAME
```

Now the script works for any user.

---

# Why Do We Need User Input?

Without user input:

- Scripts are fixed.
- Values must be edited every time.

With user input:

- Scripts become reusable.
- Scripts become dynamic.
- Automation becomes easier.
- Users can provide values at runtime.

---

# Real-World Example

Suppose you are creating a backup script.

Instead of:

```bash
SOURCE="/home/shraddha/Documents"
```

you can ask:

```bash
read -p "Enter the source directory: " SOURCE
```

Now the same script can back up any directory without changing the code.

---

# Topics Covered in Day 03

- Basic `read` command
- Reading multiple inputs
- Prompting the user
- Command-line arguments
- Positional parameters
- Special variables
- Argument validation
- Practical examples

---

# Learning Outcome

After completing Day 03, you will be able to write interactive shell scripts that accept user input and command-line arguments, making your automation scripts more flexible and reusable.
