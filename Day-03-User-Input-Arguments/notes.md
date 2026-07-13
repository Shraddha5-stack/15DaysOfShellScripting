# Day 03 - Chapter 2: The `read` Command

## What is the `read` Command?

The `read` command is a built-in Bash command used to accept input from the user through the keyboard.

It stores the entered value in a variable, which can then be used later in the script.

---

## Basic Syntax

```bash
read VARIABLE_NAME
```

Example:

```bash
read NAME
```

Whatever the user types is stored in the `NAME` variable.

---

## Displaying the Input

Example:

```bash
#!/bin/bash

echo "Enter your name:"
read NAME

echo "Hello, $NAME"
```

Output:

```
Enter your name:
Shraddha
Hello, Shraddha
```

---

## Using `read -p`

The `-p` option displays a prompt message before taking input.

Syntax:

```bash
read -p "Enter your name: " NAME
```

Example:

```bash
#!/bin/bash

read -p "Enter your city: " CITY

echo "City: $CITY"
```

---

## Reading Multiple Values

You can read more than one value in a single command.

Example:

```bash
read NAME CITY
```

Input:

```
Shraddha Pune
```

Output:

```bash
echo $NAME
echo $CITY
```

Result:

```
Shraddha
Pune
```

---

## Hidden Input Using `read -s`

The `-s` option hides the input while typing.

Useful for passwords.

Example:

```bash
read -s -p "Enter Password: " PASSWORD

echo
echo "Password saved."
```

---

## Time-Limited Input Using `read -t`

The `-t` option waits for a specified number of seconds.

Example:

```bash
read -t 10 -p "Enter your name: " NAME
```

If no input is given within 10 seconds, the command stops waiting.

---

## Limiting Input Length Using `read -n`

The `-n` option accepts only a specified number of characters.

Example:

```bash
read -n 4 PIN
```

Only the first four characters will be accepted.

---

## Common Use Cases

- Login scripts
- User registration
- Backup scripts
- Menu-driven programs
- Deployment scripts
- Server management scripts

---

## Best Practices

- Use meaningful variable names.
- Display clear prompt messages.
- Validate user input whenever possible.
- Use quotes when printing variables.

Example:

```bash
echo "$NAME"
```

instead of

```bash
echo $NAME
```

---

## Summary

- `read` accepts input from the keyboard.
- `read -p` shows a prompt.
- `read -s` hides sensitive input.
- `read -t` sets a timeout.
- `read -n` limits the number of characters entered.
