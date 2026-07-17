# Day 09 - Text Processing Commands

## grep
Searches for a specific word or pattern in a file.

```bash
grep "apple" sample.txt
```

Ignore case:

```bash
grep -i "linux" sample.txt
```

Show line numbers:

```bash
grep -n "apple" sample.txt
```

Invert match (show lines that do NOT match):

```bash
grep -v "apple" sample.txt
```

---

## cut
Extracts specific fields or columns from a file.

```bash
cut -d ":" -f1 users.txt
```

Display the second field:

```bash
cut -d ":" -f2 users.txt
```

---

## sort
Sorts lines alphabetically.

```bash
sort sample.txt
```

Sort in reverse order:

```bash
sort -r sample.txt
```

Sort numerically:

```bash
sort -n numbers.txt
```

---

## uniq
Removes adjacent duplicate lines.

```bash
sort sample.txt | uniq
```

Count duplicate occurrences:

```bash
sort sample.txt | uniq -c
```

Show only duplicate lines:

```bash
sort sample.txt | uniq -d
```

---

## wc
Counts lines, words, and characters.

```bash
wc sample.txt
```

Count lines:

```bash
wc -l sample.txt
```

Count words:

```bash
wc -w sample.txt
```

Count characters:

```bash
wc -m sample.txt
```

---

## tr
Translates or replaces characters.

Convert lowercase to uppercase:

```bash
echo "hello" | tr 'a-z' 'A-Z'
```

Convert uppercase to lowercase:

```bash
echo "HELLO" | tr 'A-Z' 'a-z'
```

Replace characters:

```bash
echo "banana" | tr 'a' '@'
```

Delete characters:

```bash
echo "banana" | tr -d 'a'
```

---

## Useful Command Combinations

Search and count matching lines:

```bash
grep "apple" sample.txt | wc -l
```

Sort and remove duplicates:

```bash
sort sample.txt | uniq
```

Display unique values with count:

```bash
sort sample.txt | uniq -c
```

Extract usernames:

```bash
cut -d ":" -f1 users.txt
```

Convert output to uppercase:

```bash
cat sample.txt | tr 'a-z' 'A-Z'
```
