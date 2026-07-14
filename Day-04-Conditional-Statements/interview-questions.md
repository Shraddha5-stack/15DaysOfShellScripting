# Day 04 – Interview Questions

## Basic Questions

### 1. What is a conditional statement in Bash?

A conditional statement allows a Bash script to make decisions based on whether a condition is true or false.

---

### 2. Why are conditional statements used?

They are used to:

- Make decisions
- Validate input
- Automate tasks
- Execute different code paths

---

### 3. Which conditional statements are available in Bash?

- if
- if-else
- if-elif-else
- Nested if
- case

---

### 4. What is the syntax of an `if` statement?

```bash
if [ condition ]
then
    commands
fi
```

---

### 5. What is the difference between `if` and `if-else`?

- `if` executes code only when the condition is true.
- `if-else` executes one block when true and another when false.

---

### 6. What is an `elif` statement?

`elif` allows checking multiple conditions without writing separate `if` statements.

---

### 7. What is a nested `if`?

A nested `if` is an `if` statement placed inside another `if` statement.

---

### 8. What is a `case` statement?

A `case` statement matches a variable against different patterns and executes the matching block.

---

### 9. When should you use `case` instead of `if-elif`?

Use `case` when comparing one variable against multiple fixed values because it is cleaner and easier to read.

---

### 10. What is the closing keyword for a `case` statement?

```bash
esac
```

---

## Numeric Comparison Operators

### 11. What does `-eq` mean?

Equal to.

### 12. What does `-ne` mean?

Not equal to.

### 13. What does `-gt` mean?

Greater than.

### 14. What does `-lt` mean?

Less than.

### 15. What does `-ge` mean?

Greater than or equal to.

### 16. What does `-le` mean?

Less than or equal to.

---

## String Comparison

### 17. How do you compare two strings?

```bash
[ "$A" = "$B" ]
```

---

### 18. What does `!=` mean?

Strings are not equal.

---

### 19. What does `-z` check?

Whether a string is empty.

---

### 20. What does `-n` check?

Whether a string is not empty.

---

## File Test Operators

### 21. What does `-f` check?

Checks if a file exists.

### 22. What does `-d` check?

Checks if a directory exists.

### 23. What does `-r` check?

Checks read permission.

### 24. What does `-w` check?

Checks write permission.

### 25. What does `-x` check?

Checks execute permission.

---

## Practical Questions

### 26. How do you check whether a user is eligible to vote?

Use an `if-else` statement to compare the age with 18.

---

### 27. Which conditional statement is best for a menu-driven program?

The `case` statement.

---

### 28. How do you validate login credentials in Bash?

Use nested `if` statements to compare the username and password.

---

### 29. How do you check if a file exists before reading it?

```bash
if [ -f filename ]
then
    cat filename
fi
```

---

### 30. Why are conditional statements important in DevOps?

They are used in:

- Deployment scripts
- Backup scripts
- Monitoring
- CI/CD pipelines
- Server administration
- Automation



---

# Advanced Interview Questions

## 31. What is the difference between `if`, `if-else`, and `if-elif-else`?

### if

Executes a block of code only when the specified condition is true.

Example:

```bash
if [ $NUM -gt 0 ]
then
    echo "Positive"
fi
```

---

### if-else

Executes one block if the condition is true and another block if it is false.

Example:

```bash
if [ $AGE -ge 18 ]
then
    echo "Eligible"
else
    echo "Not Eligible"
fi
```

---

### if-elif-else

Checks multiple conditions in sequence. The first matching condition is executed.

Example:

```bash
if [ $MARKS -ge 90 ]
then
    echo "A"
elif [ $MARKS -ge 75 ]
then
    echo "B"
else
    echo "C"
fi
```

---

## 32. What is the purpose of `then` and `fi`?

- `then` marks the beginning of the commands to execute when the condition is true.
- `fi` marks the end of the `if` block.

Example:

```bash
if [ 10 -gt 5 ]
then
    echo "True"
fi
```

---

## 33. Why do we use square brackets `[ ]` in Bash?

Square brackets are used to evaluate conditions.

Example:

```bash
if [ $A -eq $B ]
```

Spaces around `[` and `]` are mandatory.

Correct:

```bash
[ $A -eq $B ]
```

Incorrect:

```bash
[$A -eq $B]
```

---

## 34. What happens if spaces are missing inside `[ ]`?

The shell treats it as a command name, resulting in an error.

Example:

```bash
if[$A -eq 10]
```

Output:

```
command not found
```

Correct syntax:

```bash
if [ $A -eq 10 ]
```

---

## 35. What is the difference between `=` and `-eq`?

### `=`

Used for string comparison.

```bash
[ "$NAME" = "Shraddha" ]
```

### `-eq`

Used for numeric comparison.

```bash
[ $NUM -eq 10 ]
```

---

## 36. Explain numeric comparison operators.

| Operator | Meaning | Example |
|----------|---------|---------|
| -eq | Equal | 5 -eq 5 |
| -ne | Not Equal | 5 -ne 6 |
| -gt | Greater Than | 10 -gt 5 |
| -lt | Less Than | 5 -lt 10 |
| -ge | Greater Than or Equal | 10 -ge 10 |
| -le | Less Than or Equal | 5 -le 5 |

---

## 37. Explain string comparison operators.

| Operator | Meaning |
|----------|---------|
| = | Equal |
| != | Not Equal |
| -z | Empty String |
| -n | Not Empty |

Example:

```bash
NAME="Shraddha"

if [ "$NAME" = "Shraddha" ]
then
    echo "Matched"
fi
```

---

## 38. What are file test operators?

File test operators check the properties of files and directories.

Examples:

```bash
-f
```

Checks whether a regular file exists.

```bash
-d
```

Checks whether a directory exists.

```bash
-r
```

Checks read permission.

```bash
-w
```

Checks write permission.

```bash
-x
```

Checks execute permission.

---

## 39. What is a nested `if`?

A nested `if` is an `if` statement placed inside another `if` statement.

Example:

```bash
if [ "$USER" = "admin" ]
then
    if [ "$PASS" = "admin123" ]
    then
        echo "Login Successful"
    fi
fi
```

---

## 40. When should we use nested `if`?

Use nested `if` when a second condition should be checked only after the first condition is true.

Example:

- Login authentication
- User permissions
- Multi-level validation

---

## 41. What is a `case` statement?

The `case` statement compares one variable with multiple values.

Syntax:

```bash
case $CHOICE in
1)
    ;;
2)
    ;;
*)
    ;;
esac
```

---

## 42. Why is `case` preferred over multiple `if-elif` statements?

Advantages:

- Easier to read
- Better organized
- Faster to write
- Cleaner menu-driven programs

---

## 43. What does `*` mean in a `case` statement?

It is the default case.

Example:

```bash
*)
echo "Invalid Choice"
;;
```

---

## 44. What does `;;` mean in a `case` statement?

It marks the end of a case block and prevents execution from continuing into the next pattern.

---

## 45. What are logical operators in Bash?

### AND

```bash
&&
```

Both conditions must be true.

Example:

```bash
[ $A -gt 5 ] && [ $B -lt 20 ]
```

---

### OR

```bash
||
```

At least one condition must be true.

---

### NOT

```bash
!
```

Negates a condition.

---

## 46. How can you validate user input?

Example:

```bash
read AGE

if [ $AGE -ge 18 ]
then
    echo "Valid"
else
    echo "Invalid"
fi
```

---

## 47. How are conditional statements used in DevOps?

Conditional statements are used in:

- Deployment automation
- CI/CD pipelines
- Backup scripts
- Monitoring scripts
- Server health checks
- User management
- Service restart scripts
- Cron jobs
- Infrastructure automation

---

## 48. Give a real-world example of conditional statements.

Example:

If disk usage exceeds 80%, send an alert.

```bash
if [ "$USAGE" -gt 80 ]
then
    echo "Disk Full!"
fi
```

---

## 49. How do you check whether a command executed successfully?

Using the exit status (`$?`).

Example:

```bash
mkdir demo

if [ $? -eq 0 ]
then
    echo "Directory Created Successfully"
else
    echo "Failed"
fi
```

---

## 50. Why are conditional statements important in Shell Scripting?

Conditional statements make scripts intelligent by allowing them to:

- Make decisions
- Handle errors
- Validate input
- Automate repetitive tasks
- Perform system administration
- Build interactive scripts
- Improve script reliability



# Script-Based Interview Questions

## 76. Explain the following script.

```bash
#!/bin/bash

echo "Welcome"

read -p "Enter your age: " AGE

if [ "$AGE" -ge 18 ]
then
    echo "Eligible to Vote"
else
    echo "Not Eligible to Vote"
fi
```

### Answer

**Line 1**

```bash
#!/bin/bash
```

This is called the **shebang**.

It tells Linux to execute the script using the Bash shell.

---

**Line 2**

```bash
echo "Welcome"
```

Displays the text **Welcome** on the terminal.

---

**Line 3**

```bash
read -p "Enter your age: " AGE
```

- `read` accepts input from the keyboard.
- `-p` displays a prompt message.
- The entered value is stored in the variable `AGE`.

---

**Line 4**

```bash
if [ "$AGE" -ge 18 ]
```

Checks whether the age is greater than or equal to 18.

- `if` starts the conditional statement.
- `[ ]` evaluates the condition.
- `-ge` means **greater than or equal to**.

---

**Line 5**

```bash
then
```

Starts the block of commands that run when the condition is true.

---

**Line 6**

```bash
echo "Eligible to Vote"
```

Prints the message if the condition is true.

---

**Line 7**

```bash
else
```

Runs when the condition is false.

---

**Line 8**

```bash
echo "Not Eligible to Vote"
```

Prints the message when the age is less than 18.

---

**Line 9**

```bash
fi
```

Ends the `if` statement.

---

## 77. What happens when the user enters 20?

### Answer

Condition:

```bash
20 -ge 18
```

Result:

```
True
```

Output:

```
Eligible to Vote
```

---

## 78. What happens when the user enters 15?

### Answer

Condition:

```bash
15 -ge 18
```

Result:

```
False
```

Output:

```
Not Eligible to Vote
```

---

## 79. Explain this condition.

```bash
[ "$MARKS" -ge 90 ]
```

### Answer

- `$MARKS` contains the user's marks.
- `-ge` means **greater than or equal to**.
- The condition checks whether the marks are 90 or above.

---

## 80. Explain the `elif` ladder.

```bash
if [ "$MARKS" -ge 90 ]
then
    echo "A+"
elif [ "$MARKS" -ge 80 ]
then
    echo "A"
elif [ "$MARKS" -ge 70 ]
then
    echo "B"
else
    echo "F"
fi
```

### Answer

The script checks the conditions from top to bottom.

Example:

Marks = 85

- Is 85 ≥ 90? ❌ No
- Is 85 ≥ 80? ✅ Yes

Output:

```
A
```

The remaining conditions are skipped because the first matching condition is executed.

---

## 81. Explain this nested `if`.

```bash
if [ "$USERNAME" = "admin" ]
then
    if [ "$PASSWORD" = "admin123" ]
    then
        echo "Login Successful"
    fi
fi
```

### Answer

First, the script checks the username.

Only if the username is correct does it check the password.

This is called a **nested if** because one `if` is inside another `if`.

---

## 82. Why do we use a nested `if` instead of checking both conditions separately?

### Answer

Because checking the password is meaningful only after confirming that the username is correct.

This avoids unnecessary checks and makes the logic clearer.

---

## 83. Explain this `case` statement.

```bash
case $CHOICE in
1)
    echo "Addition"
    ;;
2)
    echo "Subtraction"
    ;;
*)
    echo "Invalid Choice"
    ;;
esac
```

### Answer

- `case` compares the value of `CHOICE`.
- If `CHOICE` is `1`, it prints **Addition**.
- If `CHOICE` is `2`, it prints **Subtraction**.
- `*` matches any other value and prints **Invalid Choice**.
- `esac` ends the `case` statement.

---

## 84. What is the purpose of `;;` in a `case` statement?

### Answer

`;;` ends the current case block.

Without it, Bash may continue checking or produce an error.

---

## 85. What does `*` mean in a `case` statement?

### Answer

`*` is the **default case**.

It runs when none of the other options match.

It works like the `else` part of an `if-else` statement.

---

## 86. Explain this arithmetic expression.

```bash
RESULT=$((NUM1 + NUM2))
```

### Answer

- `$(( ))` performs arithmetic calculations.
- `NUM1 + NUM2` adds the two numbers.
- The result is stored in the variable `RESULT`.

---

## 87. Why do we write variables as `$AGE` or `$MARKS`?

### Answer

The `$` symbol tells Bash to use the **value stored in the variable**.

Example:

```bash
AGE=20

echo $AGE
```

Output:

```
20
```

---

## 88. Why are variables inside quotes?

```bash
"$NAME"
```

### Answer

Quotes prevent problems if the variable contains spaces or is empty.

Example:

```bash
NAME="Shraddha Wankhade"

echo "$NAME"
```

Output:

```
Shraddha Wankhade
```

---

## 89. What is the execution flow of an `if-else` statement?

### Answer

1. Read the input.
2. Check the condition.
3. If the condition is true, execute the `if` block.
4. Otherwise, execute the `else` block.
5. Continue with the rest of the script.

---

## 90. Which of your Day 04 scripts would you use in real-world DevOps?

### Answer

- **if-statement.sh** – Check if a server is running before performing an action.
- **if-else.sh** – Validate user input or system conditions.
- **elif-ladder.sh** – Classify disk usage, CPU usage, or memory usage into different levels.
- **nested-if.sh** – Implement simple authentication or multi-step validation.
- **case-statement.sh** – Create menu-driven administration scripts for backups, service management, or log viewing.
