# Day 09 - Notes

## What is Text Processing?

Text processing is the process of searching, filtering, extracting, sorting, counting, and modifying text using Linux commands. It is one of the most important skills in Bash scripting, Linux administration, and DevOps.

---

## Why is Text Processing Important?

- Analyze log files
- Search configuration files
- Extract useful information
- Generate reports
- Automate repetitive tasks
- Process CSV and text files

---

## grep

### What is it?
`grep` searches for a word or pattern in a file.

### Why do we use it?
To quickly find specific information.

### Example

```bash
grep "apple" sample.txt
```

---

## cut

### What is it?
`cut` extracts selected fields or columns from each line.

### Why do we use it?
To retrieve only the required data.

### Example

```bash
cut -d ":" -f1 users.txt
```

---

## sort

### What is it?
`sort` arranges lines alphabetically or numerically.

### Why do we use it?
To organize data before analysis.

### Example

```bash
sort sample.txt
```

---

## uniq

### What is it?
`uniq` removes consecutive duplicate lines.

### Why do we use it?
To display only unique values.

### Example

```bash
sort sample.txt | uniq
```

---

## wc

### What is it?
`wc` counts lines, words, characters, or bytes in a file.

### Why do we use it?
To analyze the size and contents of text files.

### Example

```bash
wc -l sample.txt
```

---

## tr

### What is it?
`tr` translates, replaces, or deletes characters from text.

### Why do we use it?
To format or clean text.

### Example

```bash
echo "hello" | tr 'a-z' 'A-Z'
```

---

## Common Use Cases

- Search for errors in log files.
- Count log entries.
- Extract usernames from configuration files.
- Remove duplicate records.
- Convert text to uppercase or lowercase.
- Generate reports from text data.

---

## Best Practices

- Use `grep` to filter large files efficiently.
- Use `sort` before `uniq` to remove all duplicates.
- Verify the delimiter before using `cut`.
- Use pipes (`|`) to combine commands.
- Test commands on sample files before running them on production data.

---

## Summary

Text processing commands are powerful tools for handling large amounts of text efficiently. They are used daily in Linux, Shell Scripting, DevOps, System Administration, and Automation.
