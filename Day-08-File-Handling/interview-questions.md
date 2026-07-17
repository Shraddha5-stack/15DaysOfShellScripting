# Day 08 - Interview Questions

## 1. What is file handling in Bash?

### Answer
File handling is the process of creating, reading, updating, copying, moving, and deleting files and directories using Bash commands and scripts.

**Why do we use it?**
- To automate file operations.
- To manage files efficiently.
- To simplify repetitive tasks.

**Example**

```bash
touch sample.txt
```

Creates an empty file named `sample.txt`.

---

## 2. What does the `touch` command do?

### Answer
The `touch` command creates a new empty file. If the file already exists, it updates its timestamp.

**Example**

```bash
touch notes.txt
```

---

## 3. What is the difference between `cp` and `mv`?

### Answer

`cp`
- Copies a file or directory.
- The original file remains.

Example:

```bash
cp file1.txt file2.txt
```

`mv`
- Moves or renames a file.
- The original location no longer contains the file.

Example:

```bash
mv file1.txt newfile.txt
```

---

## 4. What is the purpose of the `rm` command?

### Answer

The `rm` command deletes files.

Example:

```bash
rm sample.txt
```

To delete a directory:

```bash
rm -r folder_name
```

---

## 5. What is the difference between `rm` and `rmdir`?

### Answer

`rm`
- Deletes files.
- Can delete directories using `-r`.

`rmdir`
- Deletes only empty directories.

Example:

```bash
rmdir empty_folder
```

---

## 6. How do you display the contents of a file?

### Answer

Use the `cat` command.

Example:

```bash
cat sample.txt
```

---

## 7. What does the `-f` file test operator do?

### Answer

Checks whether a file exists.

Example:

```bash
if [ -f sample.txt ]
then
    echo "File exists"
fi
```

---

## 8. What does the `-d` operator check?

### Answer

Checks whether a directory exists.

Example:

```bash
if [ -d Documents ]
then
    echo "Directory exists"
fi
```

---

## 9. What is output redirection?

### Answer

Output redirection writes command output to a file.

Overwrite:

```bash
echo "Hello" > file.txt
```

Append:

```bash
echo "World" >> file.txt
```

---

## 10. Why is file handling important in DevOps?

### Answer

File handling is used for:
- Log management
- Backup automation
- Configuration management
- Report generation
- Deployment scripts

It is one of the most frequently used skills in Linux and DevOps.
