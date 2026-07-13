# Day 03 – Commands Cheat Sheet

## 1. Change Directory

Used to navigate between directories.

```bash
cd ~/15DaysOfShellScripting/Day-03-User-Input-Arguments
```

---

## 2. Print Working Directory

Displays the current directory.

```bash
pwd
```

---

## 3. List Files

Displays the files and directories in the current location.

```bash
ls
```

Detailed listing:

```bash
ls -l
```

---

## 4. Create Files

Creates a new empty file.

```bash
touch filename.txt
```

Example:

```bash
touch notes.md
```

---

## 5. Open Nano Editor

Used to create or edit files.

```bash
nano filename
```

Example:

```bash
nano read-basic.sh
```

---

## 6. Display File Content

Displays the contents of a file.

```bash
cat filename
```

Example:

```bash
cat read-basic.sh
```

---

## 7. Give Execute Permission

Makes a shell script executable.

```bash
chmod +x script.sh
```

Example:

```bash
chmod +x read-basic.sh
```

---

## 8. Execute a Shell Script

Runs a shell script.

```bash
./script.sh
```

Example:

```bash
./read-basic.sh
```

---

## 9. Execute a Script with Command-Line Arguments

Passes arguments while running a script.

```bash
./command-line-arguments.sh Shraddha Nagpur DevOps
```

---

## 10. Redirect Output to a File

Saves the output of a command into a file.

```bash
./script.sh > output.txt
```

Example:

```bash
../scripts/read-basic.sh > read-basic-output.txt
```

---

## 11. Check File Permissions

Displays file permissions and details.

```bash
ls -l
```

---

## 12. Display Directory Structure

Shows the folder hierarchy.

```bash
tree
```

Example:

```bash
tree Day-03-User-Input-Arguments
```

---

## 13. Move or Rename Files

Moves or renames a file.

```bash
mv oldname newname
```

Example:

```bash
mv "Screenshot from 2026-07-13 10-30-00.png" read-basic-script.png
```

---

## 14. Bash Variables Used

| Variable | Description |
|----------|-------------|
| `$0` | Script name |
| `$1` | First argument |
| `$2` | Second argument |
| `$3` | Third argument |
| `$#` | Total number of arguments |
| `$@` | All arguments |
| `$$` | Current process ID |
| `$?` | Exit status of the previous command |

---

## 15. Read Command

Accepts input from the user.

```bash
read NAME
```

Prompt message:

```bash
read -p "Enter your name: " NAME
```

---

# Summary

In Day 03, we learned how to:

- Accept user input using `read`
- Display prompt messages
- Pass command-line arguments
- Use Bash special variables
- Validate command-line arguments
- Save command output to files
- Make shell scripts executable
