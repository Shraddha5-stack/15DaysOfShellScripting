# Day 08 - File Handling Commands

## touch
Creates a new empty file.

```bash
touch sample.txt
```

---

## mkdir
Creates a new directory.

```bash
mkdir myfolder
```

---

## ls
Lists files and directories.

```bash
ls
```

```bash
ls -l
```

---

## pwd
Displays the current working directory.

```bash
pwd
```

---

## cp
Copies a file.

```bash
cp source.txt destination.txt
```

Copy a directory recursively:

```bash
cp -r source_folder destination_folder
```

---

## mv
Moves or renames a file.

Rename:

```bash
mv oldname.txt newname.txt
```

Move:

```bash
mv file.txt Documents/
```

---

## rm
Deletes a file.

```bash
rm file.txt
```

Delete a directory recursively:

```bash
rm -r folder_name
```

---

## rmdir
Removes an empty directory.

```bash
rmdir myfolder
```

---

## cat
Displays file contents.

```bash
cat sample.txt
```

---

## head
Displays the first 10 lines of a file.

```bash
head sample.txt
```

First 5 lines:

```bash
head -5 sample.txt
```

---

## tail
Displays the last 10 lines of a file.

```bash
tail sample.txt
```

Last 5 lines:

```bash
tail -5 sample.txt
```

---

## File Test Operators

### Check if file exists

```bash
[ -f sample.txt ]
```

### Check if directory exists

```bash
[ -d myfolder ]
```

### Check if file exists (file or directory)

```bash
[ -e sample.txt ]
```

### Check if file is readable

```bash
[ -r sample.txt ]
```

### Check if file is writable

```bash
[ -w sample.txt ]
```

### Check if file is executable

```bash
[ -x script.sh ]
```

---

## Redirection Operators

Overwrite a file:

```bash
echo "Hello" > sample.txt
```

Append to a file:

```bash
echo "World" >> sample.txt
```

---

## Display File with Line Numbers

```bash
cat -n sample.txt
```

---

## Count Lines, Words and Characters

```bash
wc sample.txt
```

Count only lines:

```bash
wc -l sample.txt
```

---

## Clear File Contents

```bash
> sample.txt
```
