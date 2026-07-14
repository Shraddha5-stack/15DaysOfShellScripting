# Day 05 - Bash Loops Notes

## What is a Loop?

A loop is a programming structure that repeatedly executes a block of code until a specified condition is met. Loops help reduce code repetition and make scripts more efficient.

---

# Why Do We Use Loops?

Without loops, we would have to write the same code multiple times.

Example without a loop:

```bash
echo "Hello"
echo "Hello"
echo "Hello"
echo "Hello"
echo "Hello"
```

Using a loop:

```bash
for i in {1..5}
do
    echo "Hello"
done
```

The loop produces the same output with much less code.

---

# Types of Loops in Bash

Bash provides three types of loops:

1. for loop
2. while loop
3. until loop

---

# 1. for Loop

The `for` loop is used when the number of iterations is known.

### Syntax

```bash
for variable in list
do
    commands
done
```

### Example

```bash
for i in 1 2 3 4 5
do
    echo $i
done
```

### Output

```
1
2
3
4
5
```

### Use Cases

- Printing numbers
- Processing files
- Running commands multiple times
- Automation tasks

---

# C-Style for Loop

Bash also supports C-style loops.

### Syntax

```bash
for ((i=1; i<=5; i++))
do
    echo $i
done
```

---

# 2. while Loop

A `while` loop executes as long as the condition is true.

### Syntax

```bash
while [ condition ]
do
    commands
done
```

### Example

```bash
count=1

while [ $count -le 5 ]
do
    echo $count
    ((count++))
done
```

### Output

```
1
2
3
4
5
```

### Use Cases

- Reading files
- Waiting for user input
- Monitoring services
- Running until a condition changes

---

# 3. until Loop

The `until` loop runs until the condition becomes true.

### Syntax

```bash
until [ condition ]
do
    commands
done
```

### Example

```bash
count=1

until [ $count -gt 5 ]
do
    echo $count
    ((count++))
done
```

---

# Difference Between while and until

| while | until |
|--------|--------|
| Runs while condition is true | Runs while condition is false |
| Stops when condition becomes false | Stops when condition becomes true |

---

# break Statement

The `break` statement immediately exits the loop.

### Example

```bash
for i in {1..5}
do
    if [ $i -eq 3 ]
    then
        break
    fi

    echo $i
done
```

Output:

```
1
2
```

---

# continue Statement

The `continue` statement skips the current iteration and moves to the next iteration.

### Example

```bash
for i in {1..5}
do
    if [ $i -eq 3 ]
    then
        continue
    fi

    echo $i
done
```

Output:

```
1
2
4
5
```

---

# Real-World Examples

Loops are commonly used to:

- Process log files
- Create backups
- Monitor servers
- Check disk usage
- Deploy applications
- Read configuration files
- Generate reports
- Automate repetitive tasks

---

# Best Practices

- Choose the correct loop type.
- Avoid infinite loops.
- Keep loop logic simple.
- Use meaningful variable names.
- Add comments to improve readability.

---

# Key Points

- `for` loops are best when the number of iterations is known.
- `while` loops run while a condition is true.
- `until` loops run until a condition becomes true.
- `break` exits the loop immediately.
- `continue` skips only the current iteration.
- Loops are essential for Linux automation and DevOps scripting.

---

# Summary

Loops are one of the most powerful features of Bash scripting. They help automate repetitive tasks, improve code readability, and reduce manual effort. Understanding loops is essential for Linux administrators, DevOps engineers, and anyone writing shell scripts.
