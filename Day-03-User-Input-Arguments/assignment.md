# Day 03 – Assignment

## Objective

Practice accepting user input, using command-line arguments, and validating input in Bash scripts.

---

# Assignment 1 – Student Information

### Task

Write a shell script that asks the user to enter:

- Name
- Age
- City
- Course

Display the entered information in a formatted output.

Example:

```
Name   : Shraddha
Age    : 22
City   : Pune
Course : DevOps
```

---

# Assignment 2 – Employee Registration

### Task

Create a script that accepts:

- Employee Name
- Employee ID
- Department
- Salary

Display all the details in a professional format.

---

# Assignment 3 – Command-Line Arguments

### Task

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

# Assignment 4 – Special Variables

### Task

Write a script to display:

- Script name (`$0`)
- Total number of arguments (`$#`)
- All arguments (`$@`)
- Process ID (`$$`)
- Exit status of the previous command (`$?`)

---

# Assignment 5 – Argument Validation

### Task

Write a script that checks whether exactly three command-line arguments are provided.

If not, display:

```
Usage:
./script.sh <Name> <City> <Course>
```

Otherwise, print the provided values.

---

# Bonus Challenge

Create a script that asks the user for:

- Name
- Linux Distribution
- Favorite Shell
- Years of Experience

Display the information in a neatly formatted table.

---

# Learning Outcome

After completing these assignments, you should be able to:

- Accept user input using `read`
- Use command-line arguments
- Work with Bash special variables
- Validate user input
- Build interactive shell scripts
