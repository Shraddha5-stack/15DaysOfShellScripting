# Day 06 - Bash Arrays Commands Reference

## 1. Create an Array

```bash
fruits=("Apple" "Banana" "Mango")
```

Creates an array named `fruits`.

---

## 2. Display All Array Elements

```bash
echo "${fruits[@]}"
```

Displays all elements of the array.

---

## 3. Access an Array Element

```bash
echo "${fruits[0]}"
```

Displays the first element of the array.

---

## 4. Find Array Length

```bash
echo "${#fruits[@]}"
```

Displays the total number of elements in the array.

---

## 5. Loop Through an Array

```bash
for fruit in "${fruits[@]}"
do
    echo "$fruit"
done
```

Displays each element one by one.

---

## 6. Add an Element

```bash
fruits+=("Orange")
```

Adds a new element to the end of the array.

---

## 7. Update an Element

```bash
fruits[1]="Pineapple"
```

Updates the value at index `1`.

---

## 8. Remove an Element

```bash
unset fruits[1]
```

Removes the element at index `1`.

---

## 9. Make a Script Executable

```bash
chmod +x script_name.sh
```

Gives execute permission to a script.

---

## 10. Run a Script

```bash
./script_name.sh
```

Runs the Bash script.

---

## 11. Run Using Bash

```bash
bash script_name.sh
```

Executes the script using the Bash interpreter.

---

## 12. Edit a Script

```bash
nano script_name.sh
```

Opens a script for editing using Nano.
