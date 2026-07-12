# Day 2 Notes – Variables, Operators & User Input

---

# Chapter 1 – What is a Variable?

## Definition

A variable is a named storage location used to store data in memory. Instead of writing the same value multiple times, we store it in a variable and reuse it whenever needed.

Think of a variable as a labeled box.

- The **label** is the variable name.
- The **value inside the box** is the data.

Whenever you use the variable name, Bash retrieves the value stored inside it.

---

## Why Do We Need Variables?

Without variables, we would have to hard-code every value in our scripts.

For example:

```bash
echo "Shraddha"
echo "Shraddha"
echo "Shraddha"
```

If the name changes, you must edit every line.

Using a variable:

```bash
NAME="Shraddha"

echo "$NAME"
echo "$NAME"
echo "$NAME"
```

Now you only change the value once.

---

## Real-Life Example

Imagine your mobile phone contacts.

Instead of remembering someone's phone number, you save it under a name like **Mom**.

Whenever you select **Mom**, your phone uses the stored number.

Variables work in the same way.

```
Variable Name  → NAME
Stored Value   → Shraddha
```

---

## Bash Variable Syntax

```bash
NAME="Shraddha"
CITY="Pune"
COURSE="Shell Scripting"
```

To display a variable:

```bash
echo "$NAME"
```

Output:

```text
Shraddha
```

---

## Key Points

- Variables store data.
- Variables make scripts reusable.
- Variables reduce hard-coded values.
- Variables improve readability and maintenance.

---

## Interview Question

**Q:** What is a variable in Shell Scripting?

**Answer:**

A variable is a named storage location that stores data in memory. It allows us to reuse values, making scripts more flexible, readable, and easier to maintain.




---

# Chapter 2 – Variable Naming Rules

Before creating variables, it is important to understand the naming rules used in Bash.

Following these rules helps avoid errors and makes scripts easier to read.

---

## Rule 1: Variable names can contain

- Letters (A-Z, a-z)
- Numbers (0-9)
- Underscore (_)

Examples:

```bash
name="Shraddha"
NAME="Shraddha"
user_name="Shraddha"
course1="Shell"
```

All of the above are valid variable names.

---

## Rule 2: Variable names cannot start with a number

❌ Wrong

```bash
1name="Shraddha"
```

✅ Correct

```bash
name1="Shraddha"
```

---

## Rule 3: No spaces are allowed

❌ Wrong

```bash
my name="Shraddha"
```

Bash interprets `my` as a command, which results in an error.

✅ Correct

```bash
my_name="Shraddha"
```

or

```bash
myName="Shraddha"
```

---

## Rule 4: Do not use special characters

Avoid characters like:

```text
@
#
$
%
&
*
!
?
-
```

❌ Wrong

```bash
user-name="Shraddha"
```

✅ Correct

```bash
user_name="Shraddha"
```

---

## Rule 5: No spaces around '='

❌ Wrong

```bash
NAME = "Shraddha"
```

Bash treats this as three separate words.

✅ Correct

```bash
NAME="Shraddha"
```

---

## Rule 6: Variable names are case-sensitive

```bash
NAME="Shraddha"
name="Rahul"
```

These are **two different variables**.

```bash
echo $NAME
```

Output:

```text
Shraddha
```

```bash
echo $name
```

Output:

```text
Rahul
```

---

## Best Practices

Use uppercase for constants or environment variables:

```bash
PATH
HOME
USER
HOSTNAME
```

Use lowercase or snake_case for user-defined variables:

```bash
student_name
city
course_name
```

---

## Summary

✅ Use letters, numbers, and underscores.

✅ Start with a letter or underscore.

✅ Never use spaces.

✅ Never start with a number.

✅ Variable names are case-sensitive.

---

## Interview Questions

### Q1. Can a variable name start with a number?

**Answer:**

No. Variable names must begin with a letter or an underscore.

---

### Q2. Is Bash case-sensitive?

**Answer:**

Yes. `NAME` and `name` are treated as two different variables.

---

### Q3. Which character is commonly used to separate words in variable names?

**Answer:**

The underscore (`_`) is commonly used because it improves readability.




---

# Chapter 3 – Types of Variables

Variables in Bash are mainly divided into three types:

1. User-Defined Variables
2. Environment Variables
3. Special Variables

Understanding these three types is very important because every shell script uses them.

---

## 1. User-Defined Variables

These are variables created by the user inside a shell script.

Example:

```bash
NAME="Shraddha"
CITY="Pune"
COURSE="Shell Scripting"
```

Display their values:

```bash
echo "$NAME"
echo "$CITY"
echo "$COURSE"
```

Output:

```text
Shraddha
Pune
Shell Scripting
```

User-defined variables are useful for storing information that may change, such as names, file paths, project names, or server names.

---

## 2. Environment Variables

Environment variables are predefined variables provided by the Linux operating system.

They store important information about the current user and system.

Some common environment variables are:

| Variable | Description |
|----------|-------------|
| `$HOME` | Home directory of the current user |
| `$USER` | Current logged-in username |
| `$PWD` | Present working directory |
| `$HOSTNAME` | System hostname |
| `$SHELL` | Current shell |
| `$PATH` | Directories where executable commands are searched |

Examples:

```bash
echo "$HOME"
echo "$USER"
echo "$PWD"
echo "$HOSTNAME"
echo "$SHELL"
```

Example output:

```text
/home/shraddha
shraddha
/home/shraddha/15DaysOfShellScripting
shraddha-HP-Laptop
/bin/bash
```

These variables are automatically created when you log in.

---

## 3. Special Variables

Special variables are automatically set by Bash while running a script.

Some commonly used special variables are:

| Variable | Meaning |
|----------|---------|
| `$0` | Script name |
| `$1` | First command-line argument |
| `$2` | Second command-line argument |
| `$#` | Number of arguments |
| `$@` | All arguments |
| `$$` | Process ID (PID) of the current script |
| `$?` | Exit status of the last command |

Example:

```bash
./script.sh Linux Bash
```

Inside the script:

```bash
echo "$0"
echo "$1"
echo "$2"
echo "$#"
```

Output:

```text
./script.sh
Linux
Bash
2
```

---

## Comparison

| Type | Created By | Example |
|------|------------|----------|
| User-Defined | User | `NAME="Shraddha"` |
| Environment | Linux | `$HOME`, `$USER` |
| Special | Bash | `$1`, `$0`, `$?` |

---

## Best Practices

- Use meaningful variable names.
- Use uppercase for environment-style variables.
- Use lowercase or snake_case for your own variables.
- Avoid hard-coded values whenever possible.

---

## Interview Questions

### Q1. What are the different types of variables in Bash?

**Answer:**
Bash provides three main types of variables:
- User-defined variables
- Environment variables
- Special variables

---

### Q2. What is an environment variable?

**Answer:**
An environment variable is a predefined variable created by the operating system that stores system-related information such as the user's home directory, username, or current shell.

---

### Q3. What is the difference between user-defined and environment variables?

**Answer:**
User-defined variables are created by the programmer inside a script, while environment variables are automatically provided by the operating system.



---

# Chapter 4 – Environment Variables (Deep Dive)

## What are Environment Variables?

Environment variables are predefined variables created and managed by the Linux operating system.

They store important information about your system, current user, shell, and working environment.

These variables are available to all programs and shell scripts running in your session.

---

## Why are Environment Variables Important?

Instead of hard-coding system information into a script, we can use environment variables.

For example, instead of writing:

```bash
cd /home/shraddha
```

we can write:

```bash
cd "$HOME"
```

This makes the script work for any user.

---

## Common Environment Variables

### 1. HOME

The HOME variable stores the home directory of the current user.

Command:

```bash
echo "$HOME"
```

Example Output:

```text
/home/shraddha
```

---

### 2. USER

Displays the current logged-in username.

Command:

```bash
echo "$USER"
```

Example Output:

```text
shraddha
```

---

### 3. PWD

PWD stands for **Present Working Directory**.

Command:

```bash
echo "$PWD"
```

Example Output:

```text
/home/shraddha/15DaysOfShellScripting
```

---

### 4. SHELL

Displays the default shell being used.

Command:

```bash
echo "$SHELL"
```

Example Output:

```text
/bin/bash
```

---

### 5. HOSTNAME

Displays the system hostname.

Command:

```bash
echo "$HOSTNAME"
```

Example Output:

```text
shraddha-HP-Laptop-15s-fr4xxx
```

---

### 6. PATH

The PATH variable contains a list of directories where Linux searches for executable commands.

Command:

```bash
echo "$PATH"
```

Example Output:

```text
/usr/local/bin:/usr/bin:/bin:...
```

Directories are separated by a colon (`:`).

---

## Why is PATH Important?

When you type:

```bash
ls
```

Linux searches for the `ls` program in each directory listed in `$PATH`.

If it finds it, the command runs.

If it doesn't, you'll see:

```text
command not found
```

---

## View All Environment Variables

Command:

```bash
printenv
```

or

```bash
env
```

These commands display all environment variables available in your current session.

---

## Summary

- `$HOME` → Home directory
- `$USER` → Current user
- `$PWD` → Current directory
- `$SHELL` → Current shell
- `$HOSTNAME` → Computer name
- `$PATH` → Directories searched for commands

---

## Interview Questions

### Q1. What is an environment variable?

**Answer:**

An environment variable is a predefined variable provided by the operating system that stores information about the user's environment and system configuration.

---

### Q2. What is the purpose of the PATH variable?

**Answer:**

The PATH variable tells Linux where to search for executable programs when you run a command.

---

### Q3. Which command displays all environment variables?

**Answer:**

Both `printenv` and `env` display all environment variables.




---

# Chapter 5 – User Input (`read` Command)

## What is the `read` Command?

The `read` command is used to accept input from the user during the execution of a shell script.

Instead of hard-coding values, the script waits for the user to enter data.

This makes shell scripts interactive and reusable.

---

## Why Do We Use `read`?

Imagine writing a script that always prints:

```bash
Name: Shraddha
```

This works only for one person.

Instead, we can ask the user for their name.

Example:

```bash
#!/bin/bash

echo "Enter your name:"
read NAME

echo "Welcome, $NAME!"
```

### Sample Output

```text
Enter your name:
Shraddha

Welcome, Shraddha!
```

---

## Using `read -p`

Instead of writing `echo` and `read` separately, we can use the `-p` option.

Example:

```bash
read -p "Enter your city: " CITY

echo "City: $CITY"
```

Output:

```text
Enter your city: Pune
City: Pune
```

---

## Reading Multiple Values

The `read` command can store multiple inputs at once.

Example:

```bash
read NAME AGE CITY

echo "Name : $NAME"
echo "Age  : $AGE"
echo "City : $CITY"
```

Input:

```text
Shraddha 22 Pune
```

Output:

```text
Name : Shraddha
Age  : 22
City : Pune
```

---

## Silent Input (`-s`)

The `-s` option hides the user's input.

This is commonly used for passwords.

Example:

```bash
read -s -p "Enter Password: " PASSWORD

echo
echo "Password received."
```

The password is not displayed while typing.

---

## Time Limit (`-t`)

The `-t` option waits for input for a specified number of seconds.

Example:

```bash
read -t 10 -p "Enter your name: " NAME
```

If the user doesn't enter anything within 10 seconds, the command stops waiting.

---

## Limit Number of Characters (`-n`)

The `-n` option accepts only a fixed number of characters.

Example:

```bash
read -n 1 -p "Continue? (Y/N): " CHOICE
```

The script accepts only one character.

---

## Best Practices

- Use meaningful variable names.
- Display a clear prompt.
- Validate user input whenever possible.
- Use `-s` for passwords.
- Avoid hard-coded values.

---

## Real-World Uses

The `read` command is commonly used for:

- User registration scripts
- Login scripts
- Backup scripts
- User management scripts
- Installation scripts
- Automation tools

---

## Interview Questions

### Q1. What is the purpose of the `read` command?

**Answer:**

The `read` command accepts input from the user and stores it in a variable.

---

### Q2. What does `read -p` do?

**Answer:**

It displays a prompt message and waits for user input.

---

### Q3. Why is `read -s` used?

**Answer:**

It hides the user's input, making it suitable for passwords and other sensitive information.

---

## Summary

- `read` → Accept user input
- `read -p` → Prompt with a message
- `read -s` → Hidden input
- `read -t` → Time limit
- `read -n` → Fixed number of characters

The `read` command is one of the most frequently used commands in shell scripting because it allows scripts to interact with users.
