# Day 05 - Bash Loops Complete Notes

# 1. Introduction to Loops

A loop is a programming concept that allows us to execute the same block of code repeatedly until a specific condition is satisfied.

In Bash scripting, loops are used to automate repetitive tasks.

Example:

Without loop:

```bash
echo "Checking server 1"
echo "Checking server 2"
echo "Checking server 3"
echo "Checking server 4"
```

This becomes difficult when we have hundreds of servers.

Using a loop:

```bash
for server in server1 server2 server3 server4
do
    echo "Checking $server"
done
```

The same task can be automated easily.

---

# 2. Why Do We Need Loops?

Loops are important because they help us:

- Reduce repetitive code
- Automate manual tasks
- Save time
- Improve script readability
- Process multiple files
- Manage multiple servers
- Perform repeated operations

---

# 3. Real-Life Example

Imagine you are a DevOps engineer.

You have 100 log files and you need to check errors in every file.

Without loops:

```bash
grep ERROR app1.log
grep ERROR app2.log
grep ERROR app3.log
```

With loops:

```bash
for file in *.log
do
    grep ERROR $file
done
```

The loop automatically checks every log file.

---

# 4. Types of Loops in Bash

Bash provides three main loops:

1. for loop
2. while loop
3. until loop

---

# 5. for Loop

## Definition

A `for` loop is used when we know how many times we want to execute a task.

## Syntax

```bash
for variable in list
do
    commands
done
```

## Example

```bash
for i in 1 2 3 4 5
do
    echo "Number is $i"
done
```

Output:

```
Number is 1
Number is 2
Number is 3
Number is 4
Number is 5
```

---

## Using Range

Instead of:

```bash
for i in 1 2 3 4 5
```

We can use:

```bash
for i in {1..5}
do
    echo $i
done
```

---

# 6. C-Style for Loop

Bash also supports C programming style loops.

## Syntax

```bash
for ((initialization; condition; increment))
do
    commands
done
```

Example:

```bash
for ((i=1; i<=5; i++))
do
    echo $i
done
```

Explanation:

| Part | Meaning |
|---|---|
| i=1 | Starting value |
| i<=5 | Loop condition |
| i++ | Increase value |

---

# 7. while Loop

## Definition

A while loop executes commands as long as the condition is true.

## Syntax

```bash
while [ condition ]
do
    commands
done
```

Example:

```bash
count=1

while [ $count -le 5 ]
do
    echo $count
    ((count++))
done
```

Output:

```
1
2
3
4
5
```

---

## Real World Example

Checking service status:

```bash
while true
do
    systemctl status nginx
    sleep 60
done
```

This continuously monitors a service.

---

# 8. until Loop

## Definition

An until loop executes until the condition becomes true.

## Syntax

```bash
until [ condition ]
do
    commands
done
```

Example:

```bash
count=1

until [ $count -gt 5 ]
do
    echo $count
    ((count++))
done
```

Output:

```
1
2
3
4
5
```

---

# 9. Difference Between for, while and until

| Loop | Usage |
|---|---|
| for | When number of iterations is known |
| while | Runs while condition is true |
| until | Runs until condition becomes true |

---

# 10. break Statement

## Definition

break is used to immediately stop the loop.

Example:

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

When value becomes 3, loop stops.

---

# 11. continue Statement

## Definition

continue skips the current iteration and moves to the next iteration.

Example:

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

3 is skipped.

---

# 12. Infinite Loop

An infinite loop is a loop that never stops.

Example:

```bash
while true
do
    echo "Running"
done
```

To stop:

```
Ctrl + C
```

---

# 13. Arithmetic Operations in Loops

Bash uses arithmetic expansion:

```bash
$(( ))
```

Examples:

Addition:

```bash
sum=$((a+b))
```

Multiplication:

```bash
result=$((a*b))
```

Increment:

```bash
((count++))
```

---

# 14. Factorial Logic

Factorial example:

5!

Calculation:

```
5 × 4 × 3 × 2 × 1 = 120
```

Bash:

```bash
factorial=1

for ((i=1;i<=number;i++))
do
    factorial=$((factorial*i))
done
```

Why start with 1?

Because multiplication starts with 1.

If we start with 0:

```
0 × any number = 0
```

The answer will always be zero.

---

# 15. Scripts Created in Day 05

## for_loop.sh

Learning basic for loop.

## while_loop.sh

Learning while loop.

## until_loop.sh

Learning until loop.

## break_continue.sh

Learning loop control.

## multiplication_table.sh

Generating multiplication table.

## even_numbers.sh

Finding even numbers.

## sum_numbers.sh

Calculating sum.

## factorial.sh

Calculating factorial.

---

# 16. DevOps Real-World Usage

Loops are used in:

## Server Management

Checking multiple servers:

```bash
for server in server1 server2 server3
do
    ssh $server uptime
done
```

---

## Log Analysis

Searching logs:

```bash
for file in *.log
do
    grep ERROR $file
done
```

---

## Backup Automation

Backing up multiple directories:

```bash
for folder in /data/*
do
    backup $folder
done
```

---

# 17. Common Beginner Mistakes

## 1. Forgetting done

Wrong:

```bash
for i in 1 2 3
do
echo $i
```

Correct:

```bash
for i in 1 2 3
do
echo $i
done
```

---

## 2. Creating Infinite Loops

Always update variables inside while loops.

Example:

```bash
((count++))
```

---

## 3. Forgetting Spaces in Conditions

Wrong:

```bash
if [$a -eq 5]
```

Correct:

```bash
if [ $a -eq 5 ]
```

---

# 18. Best Practices

- Use meaningful variable names
- Add comments
- Avoid infinite loops
- Test scripts before production use
- Use proper indentation
- Keep scripts simple

---

# 19. Important Commands

```bash
nano script.sh

chmod +x script.sh

./script.sh

bash script.sh

echo

read

pwd

ls

tree
```

---

# 20. Interview Questions

## What is a loop?

A loop executes a block of code repeatedly until a condition is satisfied.

## Types of loops in Bash?

- for
- while
- until

## Difference between while and until?

while runs when condition is true.

until runs until condition becomes true.

## Why use loops in DevOps?

To automate repetitive tasks like monitoring, deployment, backups, and log analysis.

## Why factorial starts with 1?

Because factorial uses multiplication and 1 is the identity value.

---

# 21. Key Takeaways

- Loops are essential for automation.
- for loop is used for known iterations.
- while loop depends on conditions.
- until loop runs until a condition becomes true.
- break stops a loop.
- continue skips an iteration.
- Bash loops are heavily used in DevOps automation.

---

# Conclusion

Learning loops is a major step in Bash scripting. As a DevOps engineer, loops help automate system administration tasks, manage servers, process logs, and build efficient scripts.
