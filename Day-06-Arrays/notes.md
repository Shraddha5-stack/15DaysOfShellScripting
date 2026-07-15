# Day 06 - Bash Arrays Notes

## What is an Array?

An array is a variable that stores multiple values in a single variable.

Example:

```bash
fruits=("Apple" "Banana" "Mango")
```

Instead of creating:

```bash
fruit1="Apple"
fruit2="Banana"
fruit3="Mango"
```

we can store all values in one array.

---

## Array Index

Arrays start with index **0**.

Example:

| Index | Value  |
| ----: | ------ |
|     0 | Apple  |
|     1 | Banana |
|     2 | Mango  |

Accessing values:

```bash
echo "${fruits[0]}"
echo "${fruits[1]}"
echo "${fruits[2]}"
```

---

## Display All Elements

```bash
echo "${fruits[@]}"
```

Output:

```text
Apple Banana Mango
```

---

## Find Array Length

```bash
echo "${#fruits[@]}"
```

Output:

```text
3
```

---

## Loop Through an Array

```bash
for fruit in "${fruits[@]}"
do
    echo "$fruit"
done
```

Output:

```text
Apple
Banana
Mango
```

---

## Add an Element

```bash
fruits+=("Orange")
```

Output:

```text
Apple Banana Mango Orange
```

---

## Update an Element

```bash
fruits[1]="Pineapple"
```

Output:

```text
Apple Pineapple Mango Orange
```

---

## Remove an Element

```bash
unset fruits[1]
```

Output:

```text
Apple Mango Orange
```

---

## Scripts Created

* array_basics.sh
* student_names.sh
* programming_languages.sh

---

## Key Points to Remember

* Arrays store multiple values.
* Array indexing starts from **0**.
* `${array[@]}` prints all elements.
* `${array[index]}` accesses a specific element.
* `${#array[@]}` returns the number of elements.
* `+=` adds new elements.
* `unset` removes an element.
* Arrays work well with `for` loops.

---

## Summary

Today I learned how to create, access, modify, and loop through Bash arrays. Arrays make Bash scripts more organized and are useful for handling multiple related values efficiently.
