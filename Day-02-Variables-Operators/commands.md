# Day 02 - Shell Scripting Commands

## 1. Execute Script

```bash
bash script.sh
```

or

```bash
./script.sh
```

---

## 2. Give Execute Permission

```bash
chmod +x script.sh
```

---

## 3. View File Content

```bash
cat file.txt
```

---

## 4. Create File

```bash
touch filename
```

---

# Variable Commands

Create variable:

```bash
NAME="Shraddha"
```

Display variable:

```bash
echo $NAME
```

---

# Environment Variable Commands

Show all environment variables:

```bash
env
```

Display specific variable:

```bash
echo $HOME
```

---

# User Input Commands

Take input:

```bash
read NAME
```

Input with message:

```bash
read -p "Enter name: " NAME
```

---

# Arithmetic Commands

Addition:

```bash
echo $((10+20))
```

Subtraction:

```bash
echo $((20-10))
```

Multiplication:

```bash
echo $((10*5))
```

Division:

```bash
echo $((20/5))
```

---

# Comparison Commands

Equal:

```bash
-eq
```

Not equal:

```bash
-ne
```

Greater:

```bash
-gt
```

Less:

```bash
-lt
```

---

# Special Variables

Script name:

```bash
$0
```

First argument:

```bash
$1
```

Number of arguments:

```bash
$#
```

All arguments:

```bash
$@
```

Exit status:

```bash
$?
```

---

# Output Redirection

Save output:

```bash
command > output.txt
```

Append output:

```bash
command >> output.txt
```

---

# Check Script Status

```bash
git status
```
