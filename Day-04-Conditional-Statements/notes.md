# Day 04 – Conditional Statements in Bash

## What are Conditional Statements?

Conditional statements allow a Bash script to make decisions.

They execute different blocks of code depending on whether a condition is **true** or **false**.

Without conditional statements, every command in a script executes sequentially. With conditions, the script becomes interactive and intelligent.

---

# Why do we use Conditional Statements?

Conditional statements help us:

- Make decisions
- Validate user input
- Compare values
- Check files and directories
- Automate tasks
- Build interactive Bash scripts

---

# Types of Conditional Statements

1. if statement
2. if-else statement
3. if-elif-else statement
4. Nested if
5. case statement

---

# 1. if Statement

The `if` statement executes a block of code only if the specified condition is true.

### Syntax

```bash
if [ condition ]
then
    commands
fi
```

### Example

```bash
NUMBER=10

if [ $NUMBER -gt 0 ]
then
    echo "Positive Number"
fi
```

---

# 2. if-else Statement

The `if-else` statement executes one block if the condition is true and another block if it is false.

### Syntax

```bash
if [ condition ]
then
    commands
else
    commands
fi
```

### Example

```bash
AGE=20

if [ $AGE -ge 18 ]
then
    echo "Eligible to Vote"
else
    echo "Not Eligible"
fi
```

---

# 3. if-elif-else Statement

Used when there are multiple conditions.

### Syntax

```bash
if [ condition ]
then
    commands
elif [ condition ]
then
    commands
else
    commands
fi
```

### Example

```bash
MARKS=82

if [ $MARKS -ge 90 ]
then
    echo "Grade A"
elif [ $MARKS -ge 75 ]
then
    echo "Grade B"
else
    echo "Grade C"
fi
```

---

# 4. Nested if Statement

An `if` statement inside another `if` statement.

### Example

```bash
if [ "$USER" = "admin" ]
then
    if [ "$PASSWORD" = "1234" ]
    then
        echo "Login Successful"
    fi
fi
```

---

# 5. case Statement

The `case` statement is used instead of multiple `if-elif` statements when comparing one variable against different values.

### Syntax

```bash
case $choice in
1)
    echo "Option 1"
    ;;
2)
    echo "Option 2"
    ;;
*)
    echo "Invalid Choice"
    ;;
esac
```

---

# Numeric Comparison Operators

| Operator | Meaning |
|----------|---------|
| -eq | Equal |
| -ne | Not Equal |
| -gt | Greater Than |
| -lt | Less Than |
| -ge | Greater Than or Equal |
| -le | Less Than or Equal |

---

# String Comparison Operators

| Operator | Meaning |
|----------|---------|
| = | Equal |
| != | Not Equal |
| -z | String is empty |
| -n | String is not empty |

---

# File Test Operators

| Operator | Meaning |
|----------|---------|
| -f | File exists |
| -d | Directory exists |
| -r | Read permission |
| -w | Write permission |
| -x | Execute permission |

---

# Logical Operators

| Operator | Meaning |
|----------|---------|
| && | AND |
| \|\| | OR |
| ! | NOT |

---

# Real-World Uses

Conditional statements are widely used in:

- Login systems
- User authentication
- Deployment scripts
- Backup automation
- Monitoring scripts
- CI/CD pipelines
- Server administration

---

# Summary

Today I learned:

- if statement
- if-else
- if-elif-else
- Nested if
- case statement
- Numeric comparisons
- String comparisons
- File testing
- Logical operators

Conditional statements make Bash scripts dynamic and are an essential part of Linux administration and DevOps automation.
