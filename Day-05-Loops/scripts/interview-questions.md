# Day 05 - Bash Loops Interview Questions

## 1. What is a loop in Bash?

**Answer:**
A loop is a programming construct that repeatedly executes a block of code until a specified condition is met.

---

## 2. Why do we use loops?

**Answer:**
Loops reduce code repetition, automate repetitive tasks, and make scripts shorter and easier to maintain.

---

## 3. What are the types of loops available in Bash?

**Answer:**

- for loop
- while loop
- until loop

---

## 4. What is a for loop?

**Answer:**
A `for` loop is used when the number of iterations is known in advance.

**Example:**

```bash
for i in 1 2 3
do
    echo $i
done
```

---

## 5. What is a while loop?

**Answer:**
A `while` loop executes as long as the given condition is true.

---

## 6. What is an until loop?

**Answer:**
An `until` loop executes until the specified condition becomes true.

---

## 7. What is the difference between while and until?

**Answer:**

- `while` runs while the condition is true.
- `until` runs while the condition is false.

---

## 8. What is the difference between a for loop and a while loop?

**Answer:**

- `for` is used when the number of iterations is known.
- `while` is used when the number of iterations depends on a condition.

---

## 9. What is a C-style for loop?

**Answer:**

```bash
for ((i=1; i<=5; i++))
do
    echo $i
done
```

It works similarly to a C programming language `for` loop.

---

## 10. What does break do?

**Answer:**
`break` immediately exits the current loop.

---

## 11. What does continue do?

**Answer:**
`continue` skips the current iteration and proceeds with the next iteration.

---

## 12. What is an infinite loop?

**Answer:**
An infinite loop never ends because its condition always remains true.

---

## 13. How can you stop an infinite loop?

**Answer:**

- Press **Ctrl + C**
- Use a `break` statement inside the loop.

---

## 14. What is the purpose of the do keyword?

**Answer:**
`do` marks the beginning of the commands that will be executed inside the loop.

---

## 15. What does done mean?

**Answer:**
`done` marks the end of the loop body.

---

## 16. How do you print numbers from 1 to 10 using a loop?

**Answer:**

```bash
for i in {1..10}
do
    echo $i
done
```

---

## 17. How do you calculate the sum of numbers using a loop?

**Answer:**
Use a variable initialized to `0` and add each number during every iteration.

---

## 18. How do you calculate the factorial of a number?

**Answer:**
Initialize a variable to `1` and multiply it by each number from `1` to the given number.

---

## 19. How do you check whether a number is even in Bash?

**Answer:**

```bash
if [ $((number % 2)) -eq 0 ]
then
    echo "Even"
fi
```

---

## 20. Why are loops important in DevOps?

**Answer:**
Loops automate repetitive tasks such as log analysis, backups, deployments, health checks, and monitoring.

---

## 21. Can loops be nested?

**Answer:**
Yes. A loop can be placed inside another loop. This is called a nested loop.

---

## 22. What happens if you forget to increment a variable in a while loop?

**Answer:**
The loop may become infinite because the condition never changes.

---

## 23. Which loop is best for processing a list of files?

**Answer:**
A `for` loop is commonly used.

Example:

```bash
for file in *.txt
do
    echo "$file"
done
```

---

## 24. Which loop is commonly used for reading a file line by line?

**Answer:**

```bash
while read line
do
    echo "$line"
done < file.txt
```

---

## 25. What are the key benefits of using loops?

**Answer:**

- Reduce repetitive code
- Save time
- Improve readability
- Automate repetitive tasks
- Make scripts easier to maintain

---

# Summary

Understanding loops is essential for Bash scripting, Linux administration, and DevOps automation. Mastering `for`, `while`, and `until` loops along with `break` and `continue` helps build efficient and reusable scripts.
