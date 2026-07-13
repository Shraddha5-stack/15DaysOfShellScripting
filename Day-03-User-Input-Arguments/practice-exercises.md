# Day 03 – Practice Exercises

## Objective

Practice user input, command-line arguments, and special variables in Bash.

---

# Beginner Level

## Exercise 1 – Personal Information

Write a script that asks the user to enter:

- Name
- Age
- City

Display the entered information.

---

## Exercise 2 – College Details

Accept the following input from the user:

- College Name
- Branch
- Semester

Display the information in a formatted output.

---

## Exercise 3 – Employee Details

Ask the user to enter:

- Employee Name
- Employee ID
- Department

Print all the entered details.

---

# Intermediate Level

## Exercise 4 – Command-Line Arguments

Create a script that accepts three command-line arguments:

```bash
./employee.sh Rahul Pune DevOps
```

Display:

```
Employee Name : Rahul
City          : Pune
Department    : DevOps
```

---

## Exercise 5 – Display Special Variables

Write a script that displays:

- Script Name (`$0`)
- First Argument (`$1`)
- Second Argument (`$2`)
- Total Number of Arguments (`$#`)
- All Arguments (`$@`)
- Process ID (`$$`)
- Exit Status (`$?`)

---

## Exercise 6 – Validate Arguments

Write a script that checks if exactly three arguments are passed.

If not, display:

```
Usage:
./script.sh <Name> <City> <Course>
```

---

# Advanced Level

## Exercise 7 – Student Registration System

Create a script that accepts:

- Name
- Roll Number
- Course
- College

Display the information in a professional format.

---

## Exercise 8 – Login Simulation

Create a script that asks for:

- Username
- Password (hidden using `read -s`)

Display a welcome message after successful input.

---

## Exercise 9 – Server Information

Accept the following from the user:

- Server Name
- IP Address
- Environment (Dev/Test/Prod)

Display the server details neatly.

---

## Exercise 10 – DevOps Deployment Input

Create a deployment script that accepts:

- Application Name
- Version
- Environment

Example:

```bash
./deploy.sh MyApp v1.2 Production
```

Display:

```
Application : MyApp
Version     : v1.2
Environment : Production
```

---

# Challenge Exercise

Build a script that combines:

- User input (`read`)
- Command-line arguments
- Special variables
- Argument validation

The script should reject invalid input and display a summary when valid input is provided.

---

# Learning Outcome

After completing these exercises, you will be able to:

- Accept interactive user input.
- Pass and use command-line arguments.
- Use Bash special variables.
- Validate input before processing.
- Build interactive shell scripts suitable for automation tasks.
