# Day 08 - Notes

## What is File Handling?

File handling in Bash refers to creating, reading, updating, deleting, copying, and moving files or directories using shell commands and scripts.

---

## Why File Handling is Important

- Automates repetitive file operations
- Organizes files and directories
- Creates backups
- Processes log files
- Used in system administration and DevOps automation

---

## Common File Commands

### touch
Creates an empty file.

Example:

```bash
touch sample.txt
```

---

### mkdir
Creates a new directory.

Example:

```bash
mkdir myfolder
```

---

### cp
Copies files or directories.

Example:

```bash
cp file1.txt file2.txt
```

---

### mv
Moves or renames files.

Example:

```bash
mv old.txt new.txt
```

---

### rm
Deletes files.

Example:

```bash
rm sample.txt
```

---

### rmdir
Deletes an empty directory.

Example:

```bash
rmdir myfolder
```

---

### cat
Displays the contents of a file.

Example:

```bash
cat sample.txt
```

---

## File Test Operators

| Operator | Description |
|----------|-------------|
| `-f` | File exists |
| `-d` | Directory exists |
| `-e` | File or directory exists |
| `-r` | File is readable |
| `-w` | File is writable |
| `-x` | File is executable |

---

## Output Redirection

### Overwrite a file

```bash
echo "Hello" > file.txt
```

### Append to a file

```bash
echo "Hello" >> file.txt
```

---

## Best Practices

- Verify the file exists before deleting it.
- Use meaningful file names.
- Be careful with `rm -r` because it permanently deletes directories.
- Keep backups of important files.
- Test scripts on sample files before using them on production data.

---

## Summary

This chapter introduced the basics of file handling in Bash. These commands are essential for scripting, automation, DevOps tasks, and Linux system administration.
