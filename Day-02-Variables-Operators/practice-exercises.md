# Day 02 - Variables & Operators Practice Exercises

## Overview

In Day 02, we practiced:

- Shell variables
- Environment variables
- User input
- Arithmetic operations
- Operators
- Command execution
- Basic automation concepts

---

# Exercise 1 - Create and Use Variables

## Task

Create variables to store student information.

Variables:

- NAME
- CITY
- COURSE
- EXPERIENCE

## Script

```bash
#!/bin/bash

NAME="Shraddha"
CITY="Pune"
COURSE="Shell Scripting"
EXPERIENCE="Beginner"

echo "========== Student Information =========="
echo "Name       : $NAME"
echo "City       : $CITY"
echo "Course     : $COURSE"
echo "Experience : $EXPERIENCE"
echo "========================================="
```

## Expected Output

```
========== Student Information ==========
Name       : Shraddha
City       : Pune
Course     : Shell Scripting
Experience : Beginner
=========================================
```

---

# Exercise 2 - Environment Variables

## Task

Display Linux environment variables.

## Script

```bash
#!/bin/bash

echo "Home Directory: $HOME"

echo "Current User: $USER"

echo "Current Path: $PWD"

echo "Default Shell: $SHELL"

echo "Hostname: $HOSTNAME"
```

## Expected Output

```
Home Directory: /home/shraddha
Current User: shraddha
Current Path: /home/shraddha
Default Shell: /bin/bash
Hostname: Linux-machine
```

---

# Exercise 3 - Taking User Input

## Task

Create a script that accepts user information.

## Script

```bash
#!/bin/bash

read -p "Enter your name: " NAME

read -p "Enter your city: " CITY

echo "Welcome $NAME"
echo "Your city is $CITY"
```

## Expected Output

```
Enter your name: Shraddha
Enter your city: Pune

Welcome Shraddha
Your city is Pune
```

---

# Exercise 4 - Arithmetic Operations

## Task

Perform mathematical operations.

Operations:

- Addition
- Subtraction
- Multiplication
- Division
- Modulus

## Script

```bash
#!/bin/bash

A=20
B=10

echo "Addition:"
echo $((A+B))

echo "Subtraction:"
echo $((A-B))

echo "Multiplication:"
echo $((A*B))

echo "Division:"
echo $((A/B))

echo "Modulus:"
echo $((A%B))
```

## Expected Output

```
Addition:
30

Subtraction:
10

Multiplication:
200

Division:
2

Modulus:
0
```

---

# Exercise 5 - Simple Calculator

## Task

Create a calculator using variables.

## Script

```bash
#!/bin/bash

A=20
B=5

echo "Addition = $((A+B))"

echo "Subtraction = $((A-B))"

echo "Multiplication = $((A*B))"

echo "Division = $((A/B))"
```

## Expected Output

```
Addition = 25
Subtraction = 15
Multiplication = 100
Division = 4
```

---

# Exercise 6 - Comparison Operators

## Task

Compare two numbers.

## Script

```bash
#!/bin/bash

A=20
B=10

if [ $A -gt $B ]
then
    echo "$A is greater than $B"
else
    echo "$B is greater than $A"
fi
```

## Expected Output

```
20 is greater than 10
```

---

# Exercise 7 - String Comparison

## Task

Compare two strings.

## Script

```bash
#!/bin/bash

NAME="Shraddha"

if [ "$NAME" = "Shraddha" ]
then
    echo "Name matched"
else
    echo "Name not matched"
fi
```

## Expected Output

```
Name matched
```

---

# Exercise 8 - Check File Exists

## Task

Check whether a file exists.

## Script

```bash
#!/bin/bash

FILE="test.txt"

if [ -f "$FILE" ]
then
    echo "File exists"
else
    echo "File does not exist"
fi
```

---

# Exercise 9 - Special Variables Practice

## Task

Understand command-line arguments.

## Script

```bash
#!/bin/bash

echo "Script Name : $0"

echo "First Argument : $1"

echo "Second Argument : $2"

echo "Total Arguments : $#"

echo "All Arguments : $@"
```

## Run:

```bash
./script.sh Linux DevOps
```

## Output:

```
Script Name : ./script.sh
First Argument : Linux
Second Argument : DevOps
Total Arguments : 2
All Arguments : Linux DevOps
```

---

# Exercise 10 - Exit Status

## Task

Check command success or failure.

## Script

```bash
#!/bin/bash

mkdir test-folder

if [ $? -eq 0 ]
then
    echo "Directory created successfully"
else
    echo "Directory creation failed"
fi
```

---

# Exercise 11 - Increment and Decrement

## Script

```bash
#!/bin/bash

COUNT=5

echo "Current value: $COUNT"

((COUNT++))

echo "After increment: $COUNT"

((COUNT--))

echo "After decrement: $COUNT"
```

---

# Exercise 12 - Mini Project

## Student Information Automation Script

Requirements:

Create a script that:

- Stores student details
- Displays formatted output
- Saves output into a file

## Script

```bash
#!/bin/bash

NAME="Shraddha"
CITY="Pune"
COURSE="Shell Scripting"

echo "========== Student Details =========="

echo "Name   : $NAME"

echo "City   : $CITY"

echo "Course : $COURSE"

echo "===================================="
```

Save output:

```bash
./student.sh > student-output.txt
```

---

# Interview Practice Questions

## Variables

1. What is a variable?
2. How do you declare a variable?
3. Why spaces are not allowed around `=`?

---

## Environment Variables

1. What are environment variables?
2. Difference between local and environment variables.

---

## Operators

1. Explain arithmetic operators.
2. Explain comparison operators.
3. Difference between `=` and `-eq`.

---

## Special Variables

1. What is `$0`?
2. What is `$1`?
3. What is `$#`?
4. What is `$@`?
5. What is `$?`?

---

# Day 02 Completion Checklist

✅ Variables completed

✅ Environment variables completed

✅ User input completed

✅ Arithmetic operators completed

✅ Comparison operators completed

✅ Special variables completed

✅ Scripts created

✅ Outputs generated

✅ Screenshots added

---

# Final Note

Shell scripting concepts learned in Day 02 are the foundation for:

- Linux automation
- Server administration
- Backup scripts
- Monitoring scripts
- CI/CD automation
- DevOps tasks

