# Day 04 – Commands Cheat Sheet

## Running Bash Scripts

```bash
chmod +x script.sh
./script.sh
```

---

## Reading User Input

```bash
read NAME
```

```bash
read -p "Enter your name: " NAME
```

```bash
read -s PASSWORD
```

---

## if Statement

```bash
if [ condition ]
then
    commands
fi
```

---

## if-else Statement

```bash
if [ condition ]
then
    commands
else
    commands
fi
```

---

## if-elif-else Statement

```bash
if [ condition ]
then
    commands
elif [ condition ]
then
    commands
else
    commands
fi
```

---

## Nested if

```bash
if [ condition ]
then
    if [ condition ]
    then
        commands
    fi
fi
```

---

## case Statement

```bash
case $variable in
1)
    commands
    ;;
2)
    commands
    ;;
*)
    commands
    ;;
esac
```

---

# Numeric Comparison Operators

| Operator | Meaning |
|----------|---------|
| -eq | Equal |
| -ne | Not Equal |
| -gt | Greater Than |
| -lt | Less Than |
| -ge | Greater Than or Equal |
| -le | Less Than or Equal |

---

# String Comparison Operators

| Operator | Meaning |
|----------|---------|
| = | Equal |
| != | Not Equal |
| -z | Empty String |
| -n | Not Empty |

---

# File Test Operators

| Operator | Meaning |
|----------|---------|
| -f | File exists |
| -d | Directory exists |
| -r | Read permission |
| -w | Write permission |
| -x | Execute permission |

---

# Logical Operators

| Operator | Meaning |
|----------|---------|
| && | Logical AND |
| \|\| | Logical OR |
| ! | Logical NOT |

---

# Arithmetic Expansion

```bash
RESULT=$((NUM1 + NUM2))
```

---

# Exit Status

```bash
echo $?
```

---

# Useful Commands

```bash
pwd
ls
ls -l
cat filename
nano filename
chmod +x script.sh
bash script.sh
tree
```

---

# Output Redirection

```bash
./script.sh > output.txt
```

---

# Display File Contents

```bash
cat filename
```

```bash
less filename
```

```bash
head filename
```

```bash
tail filename
```
