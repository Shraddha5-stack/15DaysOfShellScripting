# Day 02 - Variables & Operators Interview Handbook

---

# Chapter 1 - Variables in Shell Scripting

## 1. What is a Variable?

### Interview Question

**What is a variable in Shell Scripting?**

### Answer

A variable is a named memory location used to store data temporarily while a shell script is running.

Variables make shell scripts:

- Dynamic
- Reusable
- Easy to understand
- Easy to maintain

Instead of writing the same value repeatedly, we store it in a variable and reuse it.

---

## Real-Life Example

Imagine you are filling an online job application.

Instead of typing your name on every page:

Shraddha Wankhade

Shraddha Wankhade

Shraddha Wankhade

You store it once:

```bash
NAME="Shraddha Wankhade"
```

Whenever needed:

```bash
echo $NAME
```

Output

```
Shraddha Wankhade
```

---

## 2. Why Do We Use Variables?

Variables are used to:

- Store values
- Reuse data
- Accept user input
- Store command output
- Perform calculations
- Reduce duplicate code
- Improve readability
- Make scripts flexible

---

## 3. Syntax of Variables

```bash
VARIABLE_NAME="value"
```

Example

```bash
NAME="Shraddha"
CITY="Pune"
COURSE="Shell Scripting"
```

Print variables

```bash
echo $NAME
echo $CITY
echo $COURSE
```

Output

```
Shraddha
Pune
Shell Scripting
```

---

## 4. Rules for Naming Variables

### Rule 1

Variable names can start with a letter.

Example

```bash
NAME="Shraddha"
```

---

### Rule 2

Variable names can start with an underscore.

Example

```bash
_NAME="Shraddha"
```

---

### Rule 3

Variable names may contain numbers.

Example

```bash
CITY1="Pune"
```

---

### Rule 4

Variable names cannot start with numbers.

Wrong

```bash
1NAME="Shraddha"
```

---

### Rule 5

Variable names cannot contain spaces.

Wrong

```bash
MY NAME="Shraddha"
```

Correct

```bash
MY_NAME="Shraddha"
```

---

### Rule 6

Do not use special characters.

Wrong

```bash
NAME@
```

Correct

```bash
NAME
```

---

## 5. Are Variables Case Sensitive?

### Interview Question

Are Bash variables case-sensitive?

### Answer

Yes.

Example

```bash
NAME="Shraddha"
name="DevOps"
```

Print

```bash
echo $NAME
echo $name
```

Output

```
Shraddha
DevOps
```

Both variables are different.

---

## 6. How Do You Access a Variable?

Use the dollar (`$`) symbol.

Example

```bash
CITY="Pune"

echo $CITY
```

Output

```
Pune
```

---

## 7. What Happens If You Forget the Dollar Symbol?

Wrong

```bash
echo CITY
```

Output

```
CITY
```

Correct

```bash
echo $CITY
```

Output

```
Pune
```

---

## 8. Where Are Variables Stored?

Variables are stored in the memory of the current shell session.

When the terminal closes, the variables are removed unless they are exported or saved in configuration files.

---

## 9. Types of Variables

There are four types of variables in Bash.

### 1. User-defined Variables

Created by the programmer.

Example

```bash
COURSE="Shell Scripting"
```

---

### 2. Environment Variables

Created by Linux.

Examples

```bash
HOME
USER
PWD
PATH
SHELL
HOSTNAME
```

---

### 3. Positional Parameters

Used for command-line arguments.

Example

```bash
./script.sh Shraddha Pune
```

Inside the script

```bash
echo $1
echo $2
```

Output

```
Shraddha
Pune
```

---

### 4. Special Variables

Examples

```bash
$0
$#
$@
$?
$$
$!
```

These variables have predefined meanings.

---

## 10. Variable Scope

Variables created normally exist only in the current shell.

Example

```bash
NAME="Shraddha"
```

To make them available to child processes:

```bash
export NAME
```

---

## 11. Common Mistakes

### Mistake 1

Wrong

```bash
NAME = "Shraddha"
```

Correct

```bash
NAME="Shraddha"
```

Reason:

Spaces are not allowed around `=`.

---

### Mistake 2

Wrong

```bash
echo NAME
```

Correct

```bash
echo $NAME
```

---

### Mistake 3

Wrong

```bash
2CITY="Pune"
```

Variable names cannot start with numbers.

---

## 12. Interview Tips

Remember these points:

- Variables are case-sensitive.
- No spaces around `=`.
- Use `$` to print variables.
- Variables are dynamically typed.
- Variables are stored in memory.
- Variables improve code readability.
- Variables help create reusable scripts.

---

## 13. Frequently Asked Interview Questions

### Q1. What is a variable?

A variable is a named memory location used to store data.

---

### Q2. Why are variables important?

They make scripts reusable and dynamic.

---

### Q3. Can a variable start with a number?

No.

---

### Q4. Are variables case-sensitive?

Yes.

---

### Q5. How do you print a variable?

```bash
echo $VARIABLE
```

---

### Q6. Can variables store numbers?

Yes.

Example

```bash
AGE=22
```

---

### Q7. Can variables store text?

Yes.

Example

```bash
NAME="Shraddha"
```

---

### Q8. Which symbol is used to access a variable?

```
$
```

---

### Q9. What happens if you forget `$`?

The variable name is printed instead of its value.

---

### Q10. Which command displays a variable?

```bash
echo
```

---

## 14. Practice Questions

1. What is a variable?
2. Why do we use variables?
3. Explain variable scope.
4. Explain variable naming rules.
5. What is variable case sensitivity?
6. Difference between variables and constants.
7. Difference between user variables and environment variables.
8. Explain positional parameters.
9. Explain special variables.
10. Explain variables with a real-life example.

---

## Chapter Summary

✔ Variables store data.

✔ Variables make scripts reusable.

✔ Variables improve readability.

✔ Variables are case-sensitive.

✔ Variables exist in memory.

✔ Use `$` to access variables.

✔ Do not leave spaces around `=`.

✔ Use meaningful variable names.

✔ Variables can store text, numbers, and command output.

✔ Variables are one of the most important concepts in Shell Scripting.---

# Chapter 2 – Environment Variables

## 1. What are Environment Variables?

### Interview Question

**What are Environment Variables in Linux?**

### Answer

Environment variables are predefined variables created by the operating system or the shell. They store important system information that programs and shell scripts use during execution.

They help Linux know:

- Current user
- Home directory
- Current working directory
- Shell being used
- Command search path

---

## 2. Why do we use Environment Variables?

Environment variables make shell scripts portable and dynamic.

Benefits:

- Avoid hardcoding paths
- Improve script portability
- Share system information
- Help applications locate files and executables

Example:

```bash
echo $HOME
```

Output:

```
/home/shraddha
```

---

## 3. Common Environment Variables

| Variable | Description |
|----------|-------------|
| HOME | User's home directory |
| USER | Logged-in username |
| PWD | Present working directory |
| OLDPWD | Previous working directory |
| PATH | Command search path |
| SHELL | Current shell |
| HOSTNAME | System hostname |
| LANG | Language settings |
| TERM | Terminal type |

---

## 4. How to View Environment Variables

Display one variable:

```bash
echo $HOME
```

Display current user:

```bash
echo $USER
```

Display current directory:

```bash
echo $PWD
```

Display shell:

```bash
echo $SHELL
```

Display hostname:

```bash
echo $HOSTNAME
```

---

## 5. How to Display All Environment Variables

Method 1

```bash
env
```

Method 2

```bash
printenv
```

---

## 6. What is PATH?

### Interview Question

What is the PATH environment variable?

### Answer

PATH is a special environment variable that tells Linux where to search for executable commands.

Example:

```bash
echo $PATH
```

Example Output:

```
/usr/local/bin:/usr/bin:/bin
```

Each directory is separated by a colon (`:`).

---

## 7. Why is PATH Important?

When you type a command like:

```bash
ls
```

Linux searches every directory listed in PATH until it finds the executable.

If the command is not found, Bash returns:

```
command not found
```

---

## 8. User Variable vs Environment Variable

### User Variable

Created by the user.

Example:

```bash
COURSE="Shell Scripting"
```

### Environment Variable

Provided by Linux.

Example:

```bash
echo $HOME
```

### Differences

| User Variable | Environment Variable |
|---------------|----------------------|
| Created by user | Created by Linux |
| Local to shell | Available to child processes after export |
| Stores custom data | Stores system information |

---

## 9. What is the export Command?

### Interview Question

What is the purpose of the export command?

### Answer

The export command makes a variable available to child processes.

Example:

```bash
NAME="Shraddha"
export NAME
```

Now every child process can access the variable.

---

## 10. Common Mistakes

### Wrong

```bash
echo HOME
```

Output:

```
HOME
```

### Correct

```bash
echo $HOME
```

---

### Wrong

```bash
HOME = "/home/shraddha"
```

Reason:

Spaces are not allowed around `=`.

---

### Correct

```bash
HOME="/home/shraddha"
```

---

## 11. Interview Tips

- Environment variables are predefined.
- Use `echo` to display them.
- Use `env` or `printenv` to list them.
- PATH stores executable locations.
- HOME stores the user's home directory.
- PWD stores the current working directory.
- SHELL stores the current shell.
- export shares variables with child processes.

---

## 12. Rapid Fire Interview Questions

### Q1. What is an environment variable?

A predefined variable that stores system information.

### Q2. Which command displays all environment variables?

```bash
env
```

or

```bash
printenv
```

### Q3. Which variable stores the home directory?

```
HOME
```

### Q4. Which variable stores the current working directory?

```
PWD
```

### Q5. Which variable stores the current shell?

```
SHELL
```

### Q6. What is PATH?

It tells Linux where to search for executable commands.

### Q7. Which command shares variables with child processes?

```bash
export
```

---

## 13. Practice Questions

1. What are environment variables?
2. Why are they important?
3. Explain PATH.
4. Explain HOME.
5. Explain PWD.
6. Explain SHELL.
7. What is HOSTNAME?
8. What is export?
9. Difference between HOME and PWD.
10. Difference between user variables and environment variables.




---

# Chapter 3 - read Command in Shell Scripting (User Input)

---

## 1. What is the read Command?

### Interview Question

**What is the use of the read command in Shell Scripting?**

### Answer

The `read` command is used to accept input from the user during script execution and store that input inside a variable.

It makes scripts interactive by allowing users to provide data dynamically.

---

## Real-Life Example

Without user input:

```bash
echo "Hello Shraddha"
```

The value is fixed.

With `read`:

```bash
read NAME

echo "Hello $NAME"
```

Now any user can enter their own name.

---

# 2. Syntax of read Command

Syntax:

```bash
read VARIABLE_NAME
```

Example:

```bash
read NAME

echo $NAME
```

Execution:

```
Enter your name:
Shraddha
```

Output:

```
Shraddha
```

---

# 3. How to Take User Input?

Example script:

```bash
#!/bin/bash

echo "Enter your name:"
read NAME

echo "Welcome $NAME"
```

Output:

```
Enter your name:
Shraddha

Welcome Shraddha
```

---

# 4. What is read -p?

## Interview Question

**What is the purpose of read -p?**

### Answer

`read -p` allows us to display a message while taking input.

It avoids using a separate `echo` command.

---

Without `read -p`

```bash
echo "Enter your city:"
read CITY
```

---

With `read -p`

```bash
read -p "Enter your city: " CITY
```

Output:

```
Enter your city: Pune
```

---

# 5. What is read -s?

## Interview Question

**Why do we use read -s?**

### Answer

`read -s` hides user input while typing.

It is mainly used for passwords.

Example:

```bash
read -s -p "Enter password: " PASSWORD
```

Output:

```
Enter password:
```

The password will not be visible.

---

# 6. What is read -t?

## Interview Question

**What is the use of read -t?**

### Answer

`read -t` sets a timeout for user input.

If the user does not provide input within the specified time, the script continues.

Example:

```bash
read -t 10 -p "Enter your name: " NAME
```

Here:

```
10 seconds
```

is the waiting time.

---

# 7. What is read -n?

## Interview Question

**What does read -n do?**

### Answer

`read -n` reads a specific number of characters.

Example:

```bash
read -n 1 -p "Press any key: " KEY
```

It accepts only one character.

---

# 8. Reading Multiple Inputs

We can read multiple values using one `read` command.

Example:

```bash
read NAME CITY COURSE

echo $NAME
echo $CITY
echo $COURSE
```

Input:

```
Shraddha Pune Shell
```

Output:

```
Shraddha
Pune
Shell
```

---

# 9. What Happens If We Provide More Values Than Variables?

Example:

```bash
read A B

echo $A
echo $B
```

Input:

```
10 20 30
```

Output:

```
10
20 30
```

The extra values are stored in the last variable.

---

# 10. What Happens If We Provide Fewer Values?

Example:

```bash
read A B C
```

Input:

```
10 20
```

Output:

```
A = 10
B = 20
C = empty
```

The remaining variable gets an empty value.

---

# 11. Difference Between echo and read

| echo | read |
|---|---|
| Displays output | Takes input |
| Sends information to user | Receives information from user |
| Used for messages | Used for interactive scripts |

Example:

echo:

```bash
echo "Hello"
```

read:

```bash
read NAME
```

---

# 12. How to Create Interactive Scripts?

Example:

```bash
#!/bin/bash

read -p "Enter username: " USERNAME

echo "Username is $USERNAME"
```

This script accepts input dynamically.

---

# 13. Common Mistakes

## Mistake 1

Wrong:

```bash
read = NAME
```

Correct:

```bash
read NAME
```

---

## Mistake 2

Wrong:

```bash
echo NAME
```

Correct:

```bash
echo $NAME
```

---

## Mistake 3

Not adding quotes:

Wrong:

```bash
read -p Enter name: NAME
```

Correct:

```bash
read -p "Enter name: " NAME
```

---

# 14. Practical Interview Questions

## Q1. What is the read command?

Answer:

The read command accepts input from the user and stores it in a variable.

---

## Q2. How do you take input from a user?

Answer:

Using the read command.

Example:

```bash
read NAME
```

---

## Q3. Difference between read and read -p?

Answer:

`read` takes input.

`read -p` displays a prompt message while taking input.

---

## Q4. How do you hide password input?

Answer:

Using:

```bash
read -s PASSWORD
```

---

## Q5. How do you set input timeout?

Answer:

Using:

```bash
read -t seconds VARIABLE
```

---

## Q6. How do you read one character?

Answer:

Using:

```bash
read -n 1 VARIABLE
```

---

## Q7. Can read accept multiple variables?

Answer:

Yes.

Example:

```bash
read NAME CITY
```

---

## Q8. Where does read store user input?

Answer:

It stores input inside shell variables.

---

# 15. Scenario-Based Questions

## Scenario 1

You are creating a login script. How will you hide the password?

Answer:

Use `read -s`.

Example:

```bash
read -s PASSWORD
```

---

## Scenario 2

You want the script to wait only 5 seconds for user input.

Answer:

Use:

```bash
read -t 5 INPUT
```

---

## Scenario 3

You want to accept only one character from the user.

Answer:

Use:

```bash
read -n 1 CHARACTER
```

---

# 16. Practice Questions

1. What is the read command?
2. Why do we use read?
3. Explain read -p.
4. Explain read -s.
5. Explain read -t.
6. Explain read -n.
7. How do you read multiple values?
8. Difference between echo and read.
9. How do you create an interactive script?
10. Explain read command with a real-world example.

---

# Chapter Summary

✔ read accepts user input.

✔ read stores values in variables.

✔ read -p displays a prompt.

✔ read -s hides sensitive information.

✔ read -t creates timeout.

✔ read -n limits characters.

✔ read makes scripts interactive.

✔ read is commonly used in automation scripts.




---

# Chapter 4 - Arithmetic Operators in Shell Scripting

---

# 1. What are Arithmetic Operators?

## Interview Question

**What are arithmetic operators in Shell Scripting?**

## Answer

Arithmetic operators are symbols used to perform mathematical operations on numbers in a shell script.

They are used for:

- Addition
- Subtraction
- Multiplication
- Division
- Modulus
- Increment
- Decrement

---

## Common Arithmetic Operators

| Operator | Meaning | Example |
|----------|---------|---------|
| + | Addition | 10 + 5 |
| - | Subtraction | 10 - 5 |
| * | Multiplication | 10 * 5 |
| / | Division | 10 / 5 |
| % | Modulus | 10 % 3 |
| ++ | Increment | a++ |
| -- | Decrement | a-- |

---

# 2. How Do We Perform Arithmetic Operations in Bash?

## Interview Question

**How do you perform calculations in Bash?**

## Answer

Bash provides different methods to perform arithmetic operations:

1. Arithmetic expansion `$(( ))`
2. let command
3. expr command
4. awk or bc for advanced calculations

---

# 3. Arithmetic Expansion `$(( ))`

## Interview Question

**What is arithmetic expansion in Bash?**

## Answer

Arithmetic expansion allows Bash to calculate mathematical expressions directly.

Syntax:

```bash
$((expression))
```

Example:

```bash
echo $((10 + 20))
```

Output:

```
30
```

---

# 4. Addition Operation

Example:

```bash
a=10
b=20

sum=$((a+b))

echo $sum
```

Output:

```
30
```

---

# 5. Subtraction Operation

Example:

```bash
a=50
b=20

result=$((a-b))

echo $result
```

Output:

```
30
```

---

# 6. Multiplication Operation

Example:

```bash
a=10
b=5

result=$((a*b))

echo $result
```

Output:

```
50
```

Note:

In Bash multiplication uses:

```
*
```

---

# 7. Division Operation

Example:

```bash
a=20
b=5

result=$((a/b))

echo $result
```

Output:

```
4
```

Note:

Bash performs integer division.

Example:

```bash
echo $((10/3))
```

Output:

```
3
```

---

# 8. Modulus Operator (%)

## Interview Question

**What is the modulus operator?**

## Answer

The modulus operator returns the remainder after division.

Example:

```bash
echo $((10%3))
```

Output:

```
1
```

Explanation:

```
10 divided by 3

3 × 3 = 9

Remaining = 1
```

---

# 9. Using Variables in Calculations

Example:

```bash
NUMBER1=100
NUMBER2=50

TOTAL=$((NUMBER1+NUMBER2))

echo $TOTAL
```

Output:

```
150
```

---

# 10. Increment Operator (++)

## Interview Question

**What is increment operator?**

## Answer

Increment increases a value by one.

Example:

```bash
COUNT=5

((COUNT++))

echo $COUNT
```

Output:

```
6
```

---

# 11. Decrement Operator (--)

## Interview Question

**What is decrement operator?**

## Answer

Decrement decreases a value by one.

Example:

```bash
COUNT=5

((COUNT--))

echo $COUNT
```

Output:

```
4
```

---

# 12. Using let Command

## Interview Question

**What is the let command?**

## Answer

`let` is used to perform arithmetic operations and assign results to variables.

Example:

```bash
let SUM=10+20

echo $SUM
```

Output:

```
30
```

---

Another example:

```bash
let COUNT++
```

---

# 13. Using expr Command

## Interview Question

**What is expr in Linux?**

## Answer

`expr` is an older command-line calculator used for arithmetic operations.

Example:

```bash
expr 10 + 20
```

Output:

```
30
```

---

Multiplication:

```bash
expr 5 \* 5
```

Output:

```
25
```

Note:

`*` must be escaped because it is a wildcard character in Bash.

---

# 14. Difference Between $(( )) , let and expr

| Method | Example | Usage |
|--------|---------|-------|
| $(( )) | $((10+20)) | Modern and recommended |
| let | let a=10+20 | Simple calculations |
| expr | expr 10 + 20 | Older method |

---

# 15. Floating Point Calculation

## Interview Question

**Can Bash perform decimal calculations?**

## Answer

Normal Bash arithmetic only supports integers.

For decimal calculations, we use `bc`.

Example:

```bash
echo "10/3" | bc
```

Output:

```
3
```

For decimal:

```bash
echo "scale=2;10/3" | bc
```

Output:

```
3.33
```

---

# 16. Common Mistakes

## Mistake 1

Wrong:

```bash
sum=a+b
```

This stores text, not calculation.

Correct:

```bash
sum=$((a+b))
```

---

## Mistake 2

Wrong:

```bash
echo $a+$b
```

Output:

```
10+20
```

Correct:

```bash
echo $((a+b))
```

---

## Mistake 3

Wrong multiplication:

```bash
expr 5 * 5
```

Correct:

```bash
expr 5 \* 5
```

---

# 17. Real Interview Questions

## Q1. How do you add two numbers in Bash?

Answer:

```bash
sum=$((a+b))
```

---

## Q2. Which operator is used for modulus?

Answer:

```
%
```

---

## Q3. Does Bash support floating point numbers?

Answer:

No, Bash supports only integer arithmetic.

For decimals, use `bc`.

---

## Q4. Difference between let and expr?

Answer:

`let` is a shell built-in command.

`expr` is an external command.

---

## Q5. What is arithmetic expansion?

Answer:

Using `$(( ))` to perform calculations.

Example:

```bash
echo $((5+5))
```

---

# 18. Scenario-Based Questions

## Scenario 1

You need to calculate server disk usage percentage.

Which method will you use?

Answer:

Use arithmetic expansion:

```bash
percentage=$((used*100/total))
```

---

## Scenario 2

You need decimal calculations in a billing script.

Which tool will you use?

Answer:

Use:

```bash
bc
```

---

## Scenario 3

You need to increase a counter after every loop.

Answer:

Use:

```bash
counter++
```

or

```bash
((counter++))
```

---

# 19. Practice Questions

1. What are arithmetic operators?
2. Explain `$(( ))`.
3. Difference between let and expr.
4. Explain modulus operator.
5. Explain increment and decrement.
6. How do you perform multiplication?
7. Does Bash support decimal values?
8. How do you calculate percentages?
9. What is the use of bc?
10. Explain arithmetic expansion with example.

---

# Chapter Summary

✔ Arithmetic operators perform mathematical calculations.

✔ `$(( ))` is the recommended method.

✔ Bash supports integer arithmetic.

✔ Use `bc` for decimal calculations.

✔ `%` gives remainder.

✔ `++` increases value.

✔ `--` decreases value.

✔ `let` and `expr` are alternative methods.

✔ Arithmetic operations are widely used in automation scripts.




---

# Chapter 5 - Comparison Operators in Shell Scripting

---

# 1. What are Comparison Operators?

## Interview Question

**What are comparison operators in Shell Scripting?**

## Answer

Comparison operators are used to compare values and make decisions in shell scripts.

They are mainly used with:

- if statements
- while loops
- until loops
- conditional expressions

They help scripts decide whether a condition is:

- True
- False

---

## Real-Life Example

Imagine checking a user's age:

```
If age is greater than 18
    Allow access
Else
    Deny access
```

Shell scripts use comparison operators to perform these checks.

---

# 2. Types of Comparison Operators in Bash

Bash has different comparison operators for:

1. Numbers
2. Strings
3. Files

---

# 3. Numeric Comparison Operators

Numeric operators are used to compare numbers.

| Operator | Meaning |
|----------|---------|
| -eq | Equal to |
| -ne | Not equal to |
| -gt | Greater than |
| -lt | Less than |
| -ge | Greater than or equal to |
| -le | Less than or equal to |

---

# 4. Equal To (-eq)

## Interview Question

**How do you check if two numbers are equal in Bash?**

## Answer

Use the `-eq` operator.

Example:

```bash
a=10
b=10

if [ $a -eq $b ]
then
    echo "Numbers are equal"
fi
```

Output:

```
Numbers are equal
```

---

# 5. Not Equal To (-ne)

## Interview Question

**How do you check if two numbers are different?**

## Answer

Use `-ne`.

Example:

```bash
a=10
b=20

if [ $a -ne $b ]
then
    echo "Numbers are different"
fi
```

Output:

```
Numbers are different
```

---

# 6. Greater Than (-gt)

Example:

```bash
AGE=25

if [ $AGE -gt 18 ]
then
    echo "Adult"
fi
```

Output:

```
Adult
```

---

# 7. Less Than (-lt)

Example:

```bash
NUMBER=5

if [ $NUMBER -lt 10 ]
then
    echo "Less than 10"
fi
```

---

# 8. Greater Than or Equal (-ge)

Example:

```bash
MARKS=40

if [ $MARKS -ge 35 ]
then
    echo "Pass"
fi
```

---

# 9. Less Than or Equal (-le)

Example:

```bash
AGE=18

if [ $AGE -le 18 ]
then
    echo "Eligible"
fi
```

---

# 10. String Comparison Operators

String operators compare text values.

| Operator | Meaning |
|----------|---------|
| = | Equal strings |
| != | Not equal strings |
| -z | Empty string |
| -n | Not empty string |

---

# 11. String Equal (=)

Example:

```bash
NAME="Shraddha"

if [ "$NAME" = "Shraddha" ]
then
    echo "Name matched"
fi
```

Output:

```
Name matched
```

---

# 12. String Not Equal (!=)

Example:

```bash
CITY="Pune"

if [ "$CITY" != "Mumbai" ]
then
    echo "Different city"
fi
```

---

# 13. Checking Empty String (-z)

## Interview Question

**How do you check if a variable is empty?**

## Answer

Use `-z`.

Example:

```bash
NAME=""

if [ -z "$NAME" ]
then
    echo "Variable is empty"
fi
```

Output:

```
Variable is empty
```

---

# 14. Checking Non-Empty String (-n)

Example:

```bash
NAME="Shraddha"

if [ -n "$NAME" ]
then
    echo "Variable has value"
fi
```

---

# 15. File Comparison Operators

Bash can also check files and directories.

| Operator | Meaning |
|----------|---------|
| -f | File exists |
| -d | Directory exists |
| -r | File readable |
| -w | File writable |
| -x | File executable |
| -s | File size greater than zero |

---

# 16. Check File Exists (-f)

Example:

```bash
if [ -f "test.txt" ]
then
    echo "File exists"
fi
```

---

# 17. Check Directory Exists (-d)

Example:

```bash
if [ -d "/home/shraddha" ]
then
    echo "Directory exists"
fi
```

---

# 18. Check File Permission

Readable:

```bash
if [ -r file.txt ]
then
    echo "Readable"
fi
```

Writable:

```bash
if [ -w file.txt ]
then
    echo "Writable"
fi
```

Executable:

```bash
if [ -x script.sh ]
then
    echo "Executable"
fi
```

---

# 19. Difference Between = and -eq

## Interview Question

**What is the difference between = and -eq?**

## Answer

`=` is used for string comparison.

Example:

```bash
[ "$NAME" = "Shraddha" ]
```

`-eq` is used for numeric comparison.

Example:

```bash
[ $AGE -eq 22 ]
```

---

# 20. Difference Between > and -gt

## Answer

In Bash:

`>` is used for redirecting output.

Example:

```bash
echo hello > file.txt
```

`-gt` is used for numeric comparison.

Example:

```bash
[ 10 -gt 5 ]
```

---

# 21. Common Mistakes

## Mistake 1

Wrong:

```bash
if [ $a = 10 ]
```

For numbers use:

```bash
if [ $a -eq 10 ]
```

---

## Mistake 2

Missing spaces:

Wrong:

```bash
if [$a -eq 10]
```

Correct:

```bash
if [ $a -eq 10 ]
```

Spaces are required.

---

## Mistake 3

Not using quotes with strings:

Better:

```bash
if [ "$NAME" = "Linux" ]
```

---

# 22. Real Interview Questions

## Q1. What are comparison operators?

Operators used to compare values and make decisions.

---

## Q2. How do you compare two numbers?

Using:

```bash
-eq
-ne
-gt
-lt
-ge
-le
```

---

## Q3. How do you compare strings?

Using:

```bash
=
!=
-z
-n
```

---

## Q4. How do you check if a file exists?

Using:

```bash
-f
```

---

## Q5. How do you check if a directory exists?

Using:

```bash
-d
```

---

## Q6. Why are spaces required in [ ]?

Because `[ ]` is actually a command called test.

---

# 23. Scenario-Based Questions

## Scenario 1

You want to check if a user is root.

Answer:

```bash
if [ $USER = "root" ]
then
    echo "Root user"
fi
```

---

## Scenario 2

You want to check if a backup file exists.

Answer:

```bash
if [ -f backup.tar.gz ]
then
    echo "Backup exists"
fi
```

---

## Scenario 3

You want to check disk space percentage.

Answer:

```bash
if [ $SPACE -gt 80 ]
then
    echo "Disk usage high"
fi
```

---

# 24. Practice Questions

1. What are comparison operators?
2. Explain numeric comparison operators.
3. Difference between -eq and =.
4. Explain string comparison.
5. Explain file comparison operators.
6. How to check file existence?
7. How to check directory existence?
8. Explain -z and -n.
9. Why are spaces required in conditions?
10. Write a script to check user access.

---

# Chapter Summary

✔ Comparison operators help scripts make decisions.

✔ Numeric comparisons use -eq, -ne, -gt, -lt.

✔ String comparisons use = and !=.

✔ -z checks empty strings.

✔ -n checks non-empty strings.

✔ File operators check files and permissions.

✔ Spaces are mandatory inside [ ].

✔ Comparison operators are heavily used with if conditions.




---

# Chapter 6 - Special Variables in Shell Scripting

---

# 1. What are Special Variables?

## Interview Question

**What are special variables in Shell Scripting?**

## Answer

Special variables are predefined variables provided by Bash that store important information about:

- Script name
- Command-line arguments
- Number of arguments
- Process information
- Exit status
- Background process ID

They start with the `$` symbol.

Examples:

```bash
$0
$1
$2
$#
$@
$?
$$
$!
```

---

# 2. Why Do We Need Special Variables?

Special variables help us create dynamic and flexible scripts.

They allow scripts to:

- Accept user input from the command line
- Know how many arguments were provided
- Check whether a command succeeded or failed
- Track process information
- Automate tasks efficiently

---

# 3. What is $0?

## Interview Question

**What does $0 represent in Shell Scripting?**

## Answer

`$0` stores the name of the currently running script.

Example:

Create script:

```bash
#!/bin/bash

echo "Script name is: $0"
```

Run:

```bash
./test.sh
```

Output:

```
Script name is: ./test.sh
```

---

# 4. What are Positional Parameters?

## Interview Question

**What are positional parameters in Bash?**

## Answer

Positional parameters store values passed to a script during execution.

They represent arguments according to their position.

Example:

Run:

```bash
./script.sh Shraddha Pune
```

Inside script:

```bash
echo $1
echo $2
```

Output:

```
Shraddha
Pune
```

---

# 5. What is $1?

## Answer

`$1` stores the first argument passed to the script.

Example:

Command:

```bash
./welcome.sh Linux
```

Script:

```bash
echo $1
```

Output:

```
Linux
```

---

# 6. What is $2?

## Answer

`$2` stores the second argument passed to the script.

Example:

Command:

```bash
./info.sh Shraddha Pune
```

Script:

```bash
echo $1
echo $2
```

Output:

```
Shraddha
Pune
```

---

# 7. What is $#?

## Interview Question

**What does $# represent?**

## Answer

`$#` stores the total number of arguments passed to a script.

Example:

Run:

```bash
./script.sh one two three
```

Script:

```bash
echo $#
```

Output:

```
3
```

---

# 8. What is $@?

## Interview Question

**What does $@ represent?**

## Answer

`$@` represents all arguments passed to the script as separate values.

Example:

Command:

```bash
./script.sh apple banana mango
```

Script:

```bash
for fruit in "$@"
do
    echo $fruit
done
```

Output:

```
apple
banana
mango
```

---

# 9. What is $*?

## Answer

`$*` also represents all arguments.

Difference:

- `$@` treats arguments separately.
- `$*` treats all arguments as a single string.

Example:

```bash
echo "$@"
echo "$*"
```

---

# 10. Difference Between $@ and $*

| $@ | $* |
|---|---|
| Treats arguments separately | Treats arguments as one string |
| Better for loops | Used for combining arguments |
| Recommended in scripts | Less commonly used |

---

# 11. What is $?

(Exit Status Variable)

## Interview Question

**What does $? represent?**

## Answer

`$?` stores the exit status of the last executed command.

Linux follows:

```
0 = Success
Non-zero = Failure
```

Example:

```bash
ls

echo $?
```

Output:

```
0
```

---

Example failure:

```bash
ls wrongfile

echo $?
```

Output:

```
2
```

---

# 12. Why is $? Important in DevOps?

Exit status helps automation tools know whether a task succeeded or failed.

Examples:

- Backup scripts
- Deployment scripts
- CI/CD pipelines
- Monitoring scripts

Example:

```bash
command

if [ $? -eq 0 ]
then
    echo "Success"
else
    echo "Failed"
fi
```

---

# 13. What is $$?

## Interview Question

**What does $$ represent?**

## Answer

`$$` stores the Process ID (PID) of the current script.

Example:

```bash
echo $$
```

Output:

```
15230
```

---

# 14. Why Do We Use $$?

Common uses:

- Creating unique temporary files
- Tracking processes
- Debugging scripts

Example:

```bash
FILE="backup_$$.txt"
```

Output:

```
backup_15230.txt
```

---

# 15. What is $!?

## Interview Question

**What does $! represent?**

## Answer

`$!` stores the Process ID of the last background process.

Example:

```bash
sleep 100 &
echo $!
```

Output:

```
15320
```

---

# 16. Difference Between $$ and $!

| $$ | $! |
|---|---|
| Current process ID | Last background process ID |
| Running script PID | Background job PID |

---

# 17. Practical Example Script

```bash
#!/bin/bash

echo "Script Name: $0"

echo "First Argument: $1"

echo "Second Argument: $2"

echo "Total Arguments: $#"

echo "All Arguments: $@"

echo "Process ID: $$"
```

Run:

```bash
./info.sh DevOps Linux
```

Output:

```
Script Name: ./info.sh
First Argument: DevOps
Second Argument: Linux
Total Arguments: 2
All Arguments: DevOps Linux
Process ID: 12345
```

---

# 18. Common Mistakes

## Mistake 1

Using `$0` expecting the first argument.

Wrong:

```bash
echo $0
```

It prints the script name.

Correct:

```bash
echo $1
```

---

## Mistake 2

Not checking arguments.

Example:

```bash
echo $1
```

If no argument is provided, output is empty.

Better:

```bash
if [ $# -eq 0 ]
then
    echo "No arguments provided"
fi
```

---

## Mistake 3

Confusing `$?` and `$#`

Remember:

```
$# = Number of arguments

$? = Command exit status
```

---

# 19. Real Interview Questions

## Q1. What are special variables?

Predefined Bash variables that store script-related information.

---

## Q2. Which variable stores script name?

```
$0
```

---

## Q3. Which variable stores first argument?

```
$1
```

---

## Q4. Which variable stores number of arguments?

```
$#
```

---

## Q5. Which variable stores all arguments?

```
$@
```

---

## Q6. Which variable stores exit status?

```
$?
```

---

## Q7. Which variable stores current process ID?

```
$$
```

---

## Q8. Which variable stores background process ID?

```
$!
```

---

# 20. Scenario-Based Questions

## Scenario 1

You want to check whether a deployment script succeeded.

Which variable will you use?

Answer:

```bash
$?
```

---

## Scenario 2

You want to create a unique log file name.

Which variable will you use?

Answer:

```bash
$$
```

Example:

```bash
log_$$_file.txt
```

---

## Scenario 3

You want to process all user-provided arguments.

Which variable will you use?

Answer:

```bash
$@
```

---

# 21. Practice Questions

1. What are special variables?
2. Explain $0.
3. Explain positional parameters.
4. Explain $1 and $2.
5. Explain $#.
6. Explain $@.
7. Difference between $@ and $*.
8. Explain $?.
9. Explain $$.
10. Explain $!.

---

# Chapter Summary

✔ Special variables are predefined by Bash.

✔ $0 stores script name.

✔ $1, $2 store arguments.

✔ $# stores argument count.

✔ $@ stores all arguments.

✔ $? stores exit status.

✔ $$ stores current process ID.

✔ $! stores background process ID.

✔ Special variables are heavily used in automation and DevOps scripts.





---

# Chapter 7 - Scenario-Based Shell Scripting Interview Questions

---

# 1. What are Scenario-Based Questions?

## Interview Question

**Why are scenario-based questions asked in Shell Scripting interviews?**

## Answer

Scenario-based questions test how a candidate applies shell scripting concepts in real-world situations.

They check:

- Problem-solving ability
- Automation skills
- Linux command knowledge
- Error handling
- Script optimization

In DevOps, shell scripting is mainly used for automation tasks.

---

# Scenario 1 - Check User Input

## Question

You are creating a script that requires a username. How will you check whether the user entered a value or not?

## Answer

Use `read` with string comparison.

Example:

```bash
#!/bin/bash

read -p "Enter username: " USERNAME

if [ -z "$USERNAME" ]
then
    echo "Username cannot be empty"
else
    echo "Welcome $USERNAME"
fi
```

---

# Scenario 2 - Check Whether a File Exists

## Question

You need to check if a backup file exists before restoring it. How will you do this?

## Answer

Use the `-f` file operator.

Example:

```bash
#!/bin/bash

FILE="backup.tar.gz"

if [ -f "$FILE" ]
then
    echo "Backup file exists"
else
    echo "Backup file not found"
fi
```

---

# Scenario 3 - Check Directory Availability

## Question

A script needs a directory before storing logs. How will you verify it?

## Answer

Use the `-d` operator.

Example:

```bash
DIR="/var/log/myapp"

if [ -d "$DIR" ]
then
    echo "Directory exists"
else
    echo "Creating directory"
    mkdir $DIR
fi
```

---

# Scenario 4 - Check Disk Usage

## Question

How will you create a script that checks server disk usage?

## Answer

Use `df` command with comparison operators.

Example:

```bash
#!/bin/bash

USAGE=$(df / | tail -1 | awk '{print $5}' | tr -d '%')

if [ $USAGE -gt 80 ]
then
    echo "Warning: Disk usage is high"
else
    echo "Disk usage is normal"
fi
```

---

# Scenario 5 - Check Service Status

## Question

How will you check whether a service is running?

## Answer

Use `systemctl`.

Example:

```bash
#!/bin/bash

SERVICE="ssh"

if systemctl is-active --quiet $SERVICE
then
    echo "$SERVICE is running"
else
    echo "$SERVICE is stopped"
fi
```

---

# Scenario 6 - Create Backup Script

## Question

How will you automate server backup?

## Answer

Use:

- tar command
- date command
- variables

Example:

```bash
#!/bin/bash

SOURCE="/home"
BACKUP="/backup"

DATE=$(date +%F)

tar -czf $BACKUP/home-$DATE.tar.gz $SOURCE

echo "Backup completed"
```

---

# Scenario 7 - Check Command Success

## Question

How do you check whether a command executed successfully?

## Answer

Use `$?`.

Example:

```bash
mkdir test

if [ $? -eq 0 ]
then
    echo "Directory created successfully"
else
    echo "Creation failed"
fi
```

---

# Scenario 8 - Accept Multiple Arguments

## Question

You want your script to accept multiple file names from users. How will you handle it?

## Answer

Use `$@`.

Example:

```bash
#!/bin/bash

for FILE in "$@"
do
    echo "Processing $FILE"
done
```

Run:

```bash
./script.sh file1 file2 file3
```

Output:

```
Processing file1
Processing file2
Processing file3
```

---

# Scenario 9 - Count Number of Arguments

## Question

How will you check how many arguments are passed to a script?

## Answer

Use `$#`.

Example:

```bash
echo "Total arguments: $#"
```

---

# Scenario 10 - Monitor Memory Usage

## Question

How will you check server memory usage?

## Answer

Use:

```bash
free -m
```

Example:

```bash
MEMORY=$(free | awk '/Mem/{print $3/$2 * 100.0}')

echo "Memory usage: $MEMORY%"
```

---

# Scenario 11 - Find Running Processes

## Question

How will you check whether a process is running?

## Answer

Use `ps` or `pgrep`.

Example:

```bash
if pgrep nginx
then
    echo "Nginx is running"
else
    echo "Nginx is not running"
fi
```

---

# Scenario 12 - Create User Automatically

## Question

How will you create multiple users using a script?

## Answer

Example:

```bash
#!/bin/bash

for USER in user1 user2 user3
do
    useradd $USER
    echo "$USER created"
done
```

---

# Scenario 13 - Delete Old Log Files

## Question

How will you remove logs older than 30 days?

## Answer

Use `find`.

Example:

```bash
find /var/log -name "*.log" -mtime +30 -delete
```

---

# Scenario 14 - Check Network Connectivity

## Question

How will you check if a server is reachable?

## Answer

Use ping.

Example:

```bash
ping -c 4 google.com
```

---

# Scenario 15 - Generate Timestamped Logs

## Question

How will you create logs with date and time?

## Answer

Use `date`.

Example:

```bash
LOGFILE="app-$(date +%F).log"

echo "Application started" >> $LOGFILE
```

---

# Scenario 16 - Restart Service Automatically

## Question

A service stopped. How can you restart it automatically?

## Answer

Example:

```bash
SERVICE="nginx"

systemctl restart $SERVICE

echo "$SERVICE restarted"
```

---

# Scenario 17 - Check Root User

## Question

How will you check whether the script is executed by root?

## Answer

Use `$UID`.

Example:

```bash
if [ $UID -eq 0 ]
then
    echo "Running as root"
else
    echo "Not root user"
fi
```

---

# Scenario 18 - Create Menu-Based Script

## Question

How will you create a menu-driven script?

## Answer

Use `case`.

Example:

```bash
case $choice in

1)
echo "Start Service"
;;

2)
echo "Stop Service"
;;

*)
echo "Invalid option"
;;

esac
```

---

# Scenario 19 - Automate Repeated Tasks

## Question

How will you schedule a shell script automatically?

## Answer

Use:

```
crontab
```

Example:

```bash
crontab -e
```

---

# Scenario 20 - DevOps Interview Scenario

## Question

Your deployment script failed. How will you debug it?

## Answer

Steps:

1. Check script logs.
2. Use `set -x` for debugging.
3. Check exit status using `$?`.
4. Verify permissions.
5. Check environment variables.
6. Test commands manually.

Example:

```bash
set -x
./deploy.sh
set +x
```

---

# Common DevOps Shell Automation Tasks

Shell scripting is commonly used for:

- Server monitoring
- Backup automation
- Log rotation
- User management
- Deployment automation
- Health checks
- Disk monitoring
- Service management
- Cron jobs
- CI/CD automation

---

# Chapter Summary

✔ Scenario questions test practical knowledge.

✔ Shell scripting is heavily used in DevOps automation.

✔ Variables store dynamic values.

✔ Conditions make decisions.

✔ Loops automate repeated tasks.

✔ Commands like df, ps, systemctl, find are frequently used.

✔ Exit codes help identify failures.

✔ Good scripts include error handling and logging.





---

# Chapter 8 - Shell Scripting Coding Interview Problems

---

# 1. Reverse a String

## Interview Question

**Write a shell script to reverse a string.**

## Answer

```bash
#!/bin/bash

read -p "Enter string: " STRING

REVERSE=$(echo $STRING | rev)

echo "Reverse string: $REVERSE"
```

Example:

Input:

```
Linux
```

Output:

```
xuniL
```

---

# 2. Check Even or Odd Number

## Interview Question

**Write a script to check whether a number is even or odd.**

## Answer

```bash
#!/bin/bash

read -p "Enter number: " NUM

if [ $((NUM%2)) -eq 0 ]
then
    echo "Even number"
else
    echo "Odd number"
fi
```

---

# 3. Find Largest of Two Numbers

## Interview Question

**Write a script to find the largest number between two numbers.**

## Answer

```bash
#!/bin/bash

read -p "Enter first number: " A
read -p "Enter second number: " B

if [ $A -gt $B ]
then
    echo "$A is greater"
else
    echo "$B is greater"
fi
```

---

# 4. Find Largest of Three Numbers

## Answer

```bash
#!/bin/bash

read -p "Enter three numbers: " A B C

if [ $A -gt $B ] && [ $A -gt $C ]
then
    echo "$A is largest"

elif [ $B -gt $C ]
then
    echo "$B is largest"

else
    echo "$C is largest"
fi
```

---

# 5. Check Palindrome Number

## Interview Question

**Write a script to check whether a number is palindrome or not.**

## Answer

```bash
#!/bin/bash

read -p "Enter number: " NUM

REV=$(echo $NUM | rev)

if [ $NUM -eq $REV ]
then
    echo "Palindrome"
else
    echo "Not palindrome"
fi
```

---

# 6. Calculate Factorial

## Interview Question

**Write a shell script to find factorial of a number.**

## Answer

```bash
#!/bin/bash

read -p "Enter number: " NUM

FACT=1

for ((i=1;i<=NUM;i++))
do
    FACT=$((FACT*i))
done

echo "Factorial: $FACT"
```

Example:

Input:

```
5
```

Output:

```
120
```

---

# 7. Generate Fibonacci Series

## Interview Question

**Write a script to print Fibonacci series.**

## Answer

```bash
#!/bin/bash

A=0
B=1

echo "Fibonacci Series"

for ((i=0;i<10;i++))
do
    echo $A
    C=$((A+B))
    A=$B
    B=$C
done
```

---

# 8. Count Number of Lines in a File

## Interview Question

**How do you count lines in a file?**

## Answer

```bash
#!/bin/bash

read -p "Enter filename: " FILE

LINES=$(wc -l < $FILE)

echo "Total lines: $LINES"
```

---

# 9. Check File Permission

## Interview Question

**Write a script to check file permissions.**

## Answer

```bash
#!/bin/bash

FILE="test.txt"

if [ -r $FILE ]
then
    echo "File is readable"
fi

if [ -w $FILE ]
then
    echo "File is writable"
fi

if [ -x $FILE ]
then
    echo "File is executable"
fi
```

---

# 10. Backup a Directory

## Interview Question

**Write a script to create a backup of a directory.**

## Answer

```bash
#!/bin/bash

SOURCE="/home"

DEST="/backup"

DATE=$(date +%F)

tar -czf $DEST/backup-$DATE.tar.gz $SOURCE

echo "Backup completed"
```

---

# 11. Monitor Disk Usage

## Interview Question

**Write a script to monitor disk usage.**

## Answer

```bash
#!/bin/bash

USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ $USAGE -gt 80 ]
then
    echo "Disk usage is high"
else
    echo "Disk usage is normal"
fi
```

---

# 12. Check Running Services

## Interview Question

**Write a script to check whether a service is running.**

## Answer

```bash
#!/bin/bash

SERVICE="ssh"

if systemctl is-active --quiet $SERVICE
then
    echo "$SERVICE is running"
else
    echo "$SERVICE stopped"
fi
```

---

# 13. Create User Management Script

## Interview Question

**Write a script to create users automatically.**

## Answer

```bash
#!/bin/bash

for USER in user1 user2 user3
do
    useradd $USER
    echo "$USER created"
done
```

---

# 14. Delete Old Files

## Interview Question

**How will you delete files older than 7 days?**

## Answer

```bash
find /backup -type f -mtime +7 -delete
```

---

# 15. Check Server Connectivity

## Interview Question

**Write a script to check server connectivity.**

## Answer

```bash
#!/bin/bash

HOST="google.com"

ping -c 3 $HOST

if [ $? -eq 0 ]
then
    echo "Server reachable"
else
    echo "Server unreachable"
fi
```

---

# 16. Count Number of Files in Directory

## Answer

```bash
#!/bin/bash

DIR="/home"

COUNT=$(ls $DIR | wc -l)

echo "Total files: $COUNT"
```

---

# 17. Check CPU Usage

## Answer

```bash
#!/bin/bash

CPU=$(top -bn1 | grep Cpu | awk '{print $2}')

echo "CPU Usage: $CPU%"
```

---

# 18. Rename Multiple Files

## Interview Question

**How can you rename multiple files using a script?**

## Answer

```bash
#!/bin/bash

for file in *.txt
do
    mv "$file" "backup-$file"
done
```

---

# 19. Debug a Shell Script

## Interview Question

**How do you debug a shell script?**

## Answer

Use:

```bash
bash -x script.sh
```

or inside script:

```bash
set -x
```

Debugging helps identify:

- Wrong commands
- Variable issues
- Logic errors

---

# 20. Deployment Script Example

## Interview Question

**How will you automate application deployment?**

## Answer

Basic deployment flow:

1. Pull latest code.
2. Install dependencies.
3. Build application.
4. Restart service.
5. Verify deployment.

Example:

```bash
#!/bin/bash

git pull

npm install

systemctl restart application

echo "Deployment completed"
```

---

# DevOps Interview Coding Topics

Important scripts to practice:

- Backup automation
- Log rotation
- Server monitoring
- User management
- Disk monitoring
- Process monitoring
- Service restart
- Deployment automation
- Health checks
- Cron automation

---

# Chapter Summary

✔ Coding questions test practical scripting skills.

✔ DevOps engineers use shell scripts for automation.

✔ Always handle errors using exit status.

✔ Use variables for dynamic values.

✔ Use conditions for decision making.

✔ Use loops for repeated tasks.

✔ Add logs for production scripts.

✔ Write scripts that are reusable and maintainable.

---




---

# Chapter 9 - Common Shell Scripting Mistakes & Best Practices

---

# 1. Why Are Best Practices Important in Shell Scripting?

## Interview Question

**Why should we follow best practices while writing shell scripts?**

## Answer

Best practices help us write scripts that are:

- Easy to understand
- Easy to maintain
- Secure
- Reliable
- Easy to debug
- Production-ready

In DevOps, shell scripts are often used for:

- Deployment
- Backup
- Monitoring
- Automation
- Server management

Poorly written scripts can cause system failures.

---

# 2. Always Use Shebang

## Interview Question

**What is the purpose of shebang in a shell script?**

## Answer

Shebang defines which interpreter should execute the script.

Example:

```bash
#!/bin/bash
```

It tells Linux to execute the script using Bash.

Without shebang, the system may not know which interpreter to use.

---

# 3. Give Meaningful Variable Names

## Bad Practice

```bash
a=10
b=20
```

The purpose is unclear.

---

## Good Practice

```bash
SERVER_COUNT=10
MAX_RETRY=20
```

Meaningful names improve readability.

---

# 4. Always Quote Variables

## Interview Question

**Why should we use quotes around variables?**

## Answer

Quotes prevent problems caused by:

- Spaces
- Special characters
- Empty values

Example:

Wrong:

```bash
rm $FILE
```

Better:

```bash
rm "$FILE"
```

---

# 5. Always Check Exit Status

## Interview Question

**Why do we check command exit status?**

## Answer

Exit status tells whether a command succeeded or failed.

Variable:

```bash
$?
```

Example:

```bash
mkdir test

if [ $? -eq 0 ]
then
    echo "Success"
else
    echo "Failed"
fi
```

---

# 6. Avoid Hardcoding Values

## Bad Practice

```bash
BACKUP=/home/shraddha/data
```

---

## Good Practice

```bash
SOURCE_DIR="/home/data"
```

Store values in variables.

Benefits:

- Easy changes
- Reusable scripts
- Better maintenance

---

# 7. Use Comments in Scripts

## Interview Question

**Why are comments important in shell scripts?**

## Answer

Comments explain:

- Script purpose
- Logic
- Important commands
- Configuration details

Example:

```bash
# Create backup of application logs

tar -czf backup.tar.gz logs/
```

---

# 8. Validate User Input

## Bad Practice

```bash
read AGE
```

No validation.

---

## Good Practice

```bash
read AGE

if [ -z "$AGE" ]
then
    echo "Age required"
fi
```

---

# 9. Handle Errors Properly

## Interview Question

**How do you handle errors in shell scripts?**

## Answer

Use:

- Exit status
- Error messages
- Logging
- Conditions

Example:

```bash
command

if [ $? -ne 0 ]
then
    echo "Command failed"
    exit 1
fi
```

---

# 10. Use set -e

## Interview Question

**What is set -e?**

## Answer

`set -e` stops script execution when any command fails.

Example:

```bash
#!/bin/bash

set -e

command1
command2
```

If command1 fails, command2 will not execute.

---

# 11. Use set -x for Debugging

## Interview Question

**How do you debug a shell script?**

## Answer

Use:

```bash
set -x
```

It displays commands while executing.

Example:

```bash
#!/bin/bash

set -x

echo "Testing"
```

---

# 12. Avoid Running Scripts as Root Unnecessarily

## Interview Question

**Why should we avoid unnecessary root privileges?**

## Answer

Running everything as root can:

- Damage system files
- Create security risks
- Increase attack possibilities

Use sudo only when required.

---

# 13. Check File Existence Before Operations

## Bad Practice

```bash
rm backup.tar.gz
```

---

## Good Practice

```bash
if [ -f backup.tar.gz ]
then
    rm backup.tar.gz
fi
```

---

# 14. Use Absolute Paths in Automation

## Interview Question

**Why use absolute paths in cron jobs?**

## Answer

Cron jobs do not load the same environment as interactive shells.

Wrong:

```bash
backup.sh
```

Better:

```bash
/home/user/scripts/backup.sh
```

---

# 15. Use Logging

## Interview Question

**Why are logs important?**

## Answer

Logs help to:

- Troubleshoot failures
- Monitor execution
- Track activities

Example:

```bash
echo "Backup completed" >> backup.log
```

---

# 16. Give Proper File Permissions

## Interview Question

**What permission is required to execute a script?**

## Answer

The execute permission.

Command:

```bash
chmod +x script.sh
```

Check:

```bash
ls -l script.sh
```

Example:

```
-rwxr-xr-x
```

---

# 17. Avoid Duplicate Code

## Bad Practice

Writing the same commands repeatedly.

---

## Good Practice

Use:

- Functions
- Variables
- Loops

Example:

```bash
backup()
{
 echo "Running backup"
}
```

---

# 18. Use Functions for Large Scripts

## Interview Question

**Why use functions in shell scripting?**

## Answer

Functions:

- Reduce code repetition
- Improve readability
- Make testing easier

Example:

```bash
function welcome()
{
 echo "Hello"
}
```

---

# 19. Protect Scripts Against Empty Variables

## Problem:

```bash
rm -rf $DIR/*
```

If DIR is empty, it can delete unwanted files.

---

## Better:

```bash
if [ -n "$DIR" ]
then
    rm -rf "$DIR"/*
fi
```

---

# 20. ShellCheck Tool

## Interview Question

**What is ShellCheck?**

## Answer

ShellCheck is a static analysis tool that checks shell scripts for:

- Syntax errors
- Common mistakes
- Security issues
- Bad practices

Example:

```bash
shellcheck script.sh
```

---

# Common Shell Scripting Mistakes List

| Mistake | Solution |
|---|---|
| Missing shebang | Add #!/bin/bash |
| No quotes around variables | Use "$VARIABLE" |
| No error handling | Check $? |
| Hardcoded paths | Use variables |
| No comments | Add explanations |
| Wrong permissions | chmod +x |
| No input validation | Validate values |
| Running everything as root | Use minimum privileges |
| No logging | Create log files |
| No debugging | Use set -x |

---

# DevOps Shell Script Checklist

Before using a script in production:

✔ Add shebang

✔ Add comments

✔ Validate input

✔ Handle errors

✔ Use meaningful variables

✔ Add logging

✔ Check permissions

✔ Test before deployment

✔ Avoid hardcoded values

✔ Debug using set -x

---

# Real Interview Questions

## Q1. How do you make shell scripts production-ready?

Answer:

By adding:

- Error handling
- Logging
- Input validation
- Proper permissions
- Comments
- Testing

---

## Q2. How do you debug shell scripts?

Answer:

Using:

```bash
bash -x script.sh
```

or

```bash
set -x
```

---

## Q3. Why should variables be quoted?

Answer:

To prevent issues with spaces and special characters.

---

## Q4. Why use comments?

Answer:

To explain script logic and improve maintainability.

---

## Q5. Why avoid hardcoding?

Answer:

Because variables make scripts flexible and reusable.

---

# Chapter Summary

✔ Follow best practices for reliable scripts.

✔ Always use shebang.

✔ Use meaningful variables.

✔ Quote variables.

✔ Validate input.

✔ Handle errors.

✔ Add logging.

✔ Debug using set -x.

✔ Use proper permissions.

✔ Write secure and maintainable scripts.

---





---

# Chapter 10 - Rapid Fire Shell Scripting Interview Questions

---

# 1. What is Shell Scripting?

## Answer

Shell scripting is a way to automate Linux tasks by writing a series of commands inside a script file.

Example:

```bash
#!/bin/bash

echo "Hello Linux"
```

---

# 2. What is Bash?

## Answer

Bash (Bourne Again Shell) is a command-line interpreter used in Linux to execute commands and shell scripts.

---

# 3. What is the extension of a shell script file?

## Answer

The common extension is:

```
.sh
```

Example:

```
backup.sh
```

---

# 4. What is the first line of a shell script?

## Answer

The first line is called shebang.

Example:

```bash
#!/bin/bash
```

---

# 5. How do you execute a shell script?

## Answer

Method 1:

```bash
bash script.sh
```

Method 2:

```bash
./script.sh
```

For method 2, give execute permission:

```bash
chmod +x script.sh
```

---

# 6. What is a variable?

## Answer

A variable stores data that can be used during script execution.

Example:

```bash
NAME="Shraddha"
```

---

# 7. How do you access a variable?

## Answer

Using `$`.

Example:

```bash
echo $NAME
```

---

# 8. Are Bash variables case-sensitive?

## Answer

Yes.

Example:

```bash
NAME="Linux"

name="DevOps"
```

Both are different variables.

---

# 9. What are environment variables?

## Answer

Variables provided by the operating system.

Examples:

```bash
$HOME
$PATH
$USER
$PWD
```

---

# 10. How do you display environment variables?

## Answer

Using:

```bash
env
```

or:

```bash
printenv
```

---

# 11. What is the use of read command?

## Answer

It accepts input from the user.

Example:

```bash
read NAME
```

---

# 12. Difference between echo and read?

## Answer

| echo | read |
|---|---|
| Displays output | Takes input |
| Sends information | Receives information |

---

# 13. What is read -p?

## Answer

It displays a message while taking input.

Example:

```bash
read -p "Enter name: " NAME
```

---

# 14. What is read -s?

## Answer

It hides input while typing.

Used mainly for passwords.

Example:

```bash
read -s PASSWORD
```

---

# 15. How do you perform arithmetic operations?

## Answer

Using:

```bash
$(( ))
```

Example:

```bash
echo $((10+20))
```

---

# 16. What are arithmetic operators?

## Answer

Operators used for mathematical calculations.

Examples:

```
+
-
*
/
%
```

---

# 17. Difference between = and -eq?

## Answer

`=` compares strings.

Example:

```bash
[ "$NAME" = "Linux" ]
```

`-eq` compares numbers.

Example:

```bash
[ $AGE -eq 20 ]
```

---

# 18. What is an if statement?

## Answer

It is used to execute commands based on conditions.

Example:

```bash
if [ condition ]
then
 command
fi
```

---

# 19. What are comparison operators?

## Answer

Operators used to compare values.

Examples:

```
-eq
-ne
-gt
-lt
-ge
-le
```

---

# 20. What are special variables?

## Answer

Predefined Bash variables.

Examples:

```
$0
$1
$#
$@
$?
$$
$!
```

---

# 21. What does $0 represent?

## Answer

The script name.

Example:

```bash
echo $0
```

---

# 22. What does $1 represent?

## Answer

The first command-line argument.

Example:

```bash
./script.sh Linux
```

`$1`

Output:

```
Linux
```

---

# 23. What does $# represent?

## Answer

Number of arguments passed to a script.

Example:

```bash
./test.sh a b c
```

Output:

```
3
```

---

# 24. What does $? represent?

## Answer

Exit status of the last executed command.

Values:

```
0 = Success
Non-zero = Failure
```

---

# 25. What does $$ represent?

## Answer

Current script process ID.

Example:

```bash
echo $$
```

---

# 26. What does $! represent?

## Answer

Process ID of the last background process.

Example:

```bash
sleep 100 &
echo $!
```

---

# 27. Difference between $@ and $*?

## Answer

`$@`

- Treats arguments separately.

`$*`

- Treats all arguments as one string.

---

# 28. How do you debug a shell script?

## Answer

Using:

```bash
bash -x script.sh
```

or:

```bash
set -x
```

---

# 29. How do you stop script execution when an error occurs?

## Answer

Use:

```bash
set -e
```

---

# 30. How do you check file existence?

## Answer

Using:

```bash
-f
```

Example:

```bash
if [ -f file.txt ]
```

---

# 31. How do you check directory existence?

## Answer

Using:

```bash
-d
```

---

# 32. How do you check file permissions?

## Answer

Operators:

```
-r  readable
-w  writable
-x  executable
```

---

# 33. What command gives execute permission?

## Answer

```bash
chmod +x script.sh
```

---

# 34. What is chmod?

## Answer

chmod changes file permissions.

Example:

```bash
chmod 755 script.sh
```

---

# 35. What is cron?

## Answer

Cron is a Linux scheduler used to execute tasks automatically at a specific time.

Command:

```bash
crontab -e
```

---

# 36. Why is shell scripting important in DevOps?

## Answer

Shell scripting is used for:

- Automation
- Deployment
- Monitoring
- Backup
- Server management
- CI/CD tasks

---

# 37. How do you create a log file?

## Answer

Using redirection:

```bash
echo "Backup completed" >> backup.log
```

---

# 38. How do you redirect output?

## Answer

Using:

```bash
>
```

Example:

```bash
ls > output.txt
```

---

# 39. Difference between > and >>?

## Answer

`>`

- Overwrites file.

`>>`

- Appends data.

---

# 40. What makes a good shell script?

## Answer

A good script has:

✔ Proper comments

✔ Error handling

✔ Logging

✔ Input validation

✔ Meaningful variables

✔ Security practices

✔ Proper permissions

---

# Final Day 02 Interview Revision Checklist

Before an interview, remember:

✔ Variables store data.

✔ Environment variables provide system information.

✔ read takes user input.

✔ Arithmetic operators perform calculations.

✔ Comparison operators make decisions.

✔ Special variables handle script information.

✔ Exit status checks command success.

✔ Permissions control script execution.

✔ Logging helps troubleshooting.

✔ Shell scripts automate DevOps tasks.

---

# Day 02 Complete Summary

Topics Covered:

✅ Variables

✅ Environment Variables

✅ User Input (read)

✅ Arithmetic Operators

✅ Comparison Operators

✅ Special Variables

✅ Scenario-Based Questions

✅ Coding Problems

✅ Best Practices

✅ Rapid Interview Revision

---

End of Day 02 Interview Handbook 🚀
