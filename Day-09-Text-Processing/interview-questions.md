# Day 09 - Interview Questions

## 1. What is text processing in Bash?

### Answer

Text processing is the process of searching, filtering, extracting, sorting, counting, and modifying text using Linux commands.

### Why do we use it?

- Process log files
- Analyze text files
- Generate reports
- Automate repetitive tasks

### Example

```bash
grep "ERROR" logfile.txt
```

---

## 2. What is the `grep` command?

### Answer

`grep` searches for a word or pattern in a file.

### Why do we use it?

To find specific information quickly.

### How does it work?

It scans each line and prints only the lines that match the given pattern.

### Example

```bash
grep "apple" sample.txt
```

---

## 3. What is the `cut` command?

### Answer

`cut` extracts selected fields or columns from each line.

### Why do we use it?

To retrieve only the required data from structured text.

### How does it work?

It uses a delimiter (such as `:` or `,`) and prints the selected field.

### Example

```bash
cut -d ":" -f1 users.txt
```

---

## 4. What is the `sort` command?

### Answer

`sort` arranges lines alphabetically or numerically.

### Why do we use it?

To organize data before processing.

### Example

```bash
sort sample.txt
```

---

## 5. What is the `uniq` command?

### Answer

`uniq` removes adjacent duplicate lines.

### Why do we use it?

To display only unique values.

### How does it work?

It compares consecutive lines and removes repeated ones.

### Example

```bash
sort sample.txt | uniq
```

---

## 6. Why do we use `sort` before `uniq`?

### Answer

Because `uniq` removes only consecutive duplicate lines. Sorting places identical lines together so `uniq` can remove them.

### Example

```bash
sort sample.txt | uniq
```

---

## 7. What is the `wc` command?

### Answer

`wc` counts lines, words, characters, or bytes in a file.

### Why do we use it?

To analyze text files and count records.

### Example

```bash
wc -l sample.txt
```

---

## 8. What is the `tr` command?

### Answer

`tr` translates, replaces, or deletes characters from text.

### Why do we use it?

To format and clean text.

### Example

```bash
echo "hello" | tr 'a-z' 'A-Z'
```

---

## 9. What is a pipe (`|`) in Linux?

### Answer

A pipe passes the output of one command as the input to another command.

### Why do we use it?

To combine multiple commands into a single workflow.

### Example

```bash
sort sample.txt | uniq
```

---

## 10. Give a real-world DevOps example of text processing.

### Answer

A DevOps engineer can search application logs for errors and count them.

### Example

```bash
grep "ERROR" application.log | wc -l
```

This command counts how many lines contain the word **ERROR**.

---

## 11. What is the difference between `grep` and `find`?

### Answer

- `grep` searches **inside files** for text.
- `find` searches for **files and directories**.

### Example

```bash
grep "Linux" notes.txt
```

```bash
find . -name "*.txt"
```

---

## 12. Which text processing commands are commonly used in DevOps?

### Answer

- grep
- cut
- sort
- uniq
- wc
- tr
- awk
- sed

These commands help process logs, configuration files, reports, and automation scripts.
