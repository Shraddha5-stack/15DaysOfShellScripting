# Day 05 - Bash Loops Commands Reference

This document contains the commands and syntax used while learning Bash loops.

---

# File and Directory Commands

## Print Current Directory

```bash
pwd
```

Displays the current working directory.

---

## List Files

```bash
ls
```

Lists files and directories.

---

## List Files with Details

```bash
ls -l
```

Displays detailed file information.

---

## Change Directory

```bash
cd directory_name
```

Moves to another directory.

Example:

```bash
cd scripts
```

---

## Create a File

```bash
nano filename.sh
```

Example:

```bash
nano for_loop.sh
```

---

# File Permission Commands

## Make Script Executable

```bash
chmod +x script.sh
```

Example:

```bash
chmod +x for_loop.sh
```

Adds execute permission to the script.

---

# Running Scripts

## Execute Script

```bash
./script.sh
```

Example:

```bash
./for_loop.sh
```

Runs the executable Bash script.

---

## Execute Using Bash

```bash
bash script.sh
```

Example:

```bash
bash while_loop.sh
```

Runs the script using the Bash interpreter.

---

# Echo Command

```bash
echo "Hello World"
```

Prints text to the terminal.

---

# Read Command

```bash
read variable
```

Reads user input.

Example:

```bash
read number
```

---

# Variables

Declare a variable:

```bash
name="Shraddha"
```

Print a variable:

```bash
echo $name
```

---

# Arithmetic Expansion

Addition

```bash
sum=$((a+b))
```

Subtraction

```bash
result=$((a-b))
```

Multiplication

```bash
result=$((a*b))
```

Division

```bash
result=$((a/b))
```

Modulus

```bash
result=$((a%2))
```

---

# for Loop

Basic Syntax

```bash
for variable in list
do
    commands
done
```

Example

```bash
for i in 1 2 3 4 5
do
    echo $i
done
```

---

# C-Style for Loop

```bash
for ((i=1; i<=10; i++))
do
    echo $i
done
```

---

# while Loop

```bash
while [ condition ]
do
    commands
done
```

Example

```bash
count=1

while [ $count -le 5 ]
do
    echo $count
    ((count++))
done
```

---

# until Loop

```bash
until [ condition ]
do
    commands
done
```

Example

```bash
count=1

until [ $count -gt 5 ]
do
    echo $count
    ((count++))
done
```

---

# break Statement

```bash
break
```

Immediately exits the loop.

---

# continue Statement

```bash
continue
```

Skips the current iteration and continues with the next one.

---

# if Statement

```bash
if [ condition ]
then
    commands
fi
```

Example

```bash
if [ $number -gt 10 ]
then
    echo "Greater than 10"
fi
```

---

# Integer Comparison Operators

| Operator | Meaning |
|----------|---------|
| -eq | Equal to |
| -ne | Not equal to |
| -gt | Greater than |
| -lt | Less than |
| -ge | Greater than or equal to |
| -le | Less than or equal to |

---

# Useful Commands Used

```bash
pwd
ls
ls -l
cd
nano
chmod +x
./script.sh
bash script.sh
echo
read
```

---

# Summary

These commands form the foundation of writing and executing Bash loops. They are frequently used in Linux administration, automation, and DevOps scripting.
