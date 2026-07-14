# Exercise 1 – if Statement

## Script

```bash
#!/bin/bash

read -p "Enter your age: " AGE

if [ "$AGE" -ge 18 ]
then
    echo "Eligible to Vote"
fi
```

## Script Screenshot

![if Statement Script](screenshots/if-statement-script.png)

## Output Screenshot

![if Statement Output](screenshots/if-statement-output.png)

---

# Exercise 2 – if-else Statement

## Script

```bash
#!/bin/bash

read -p "Enter your age: " AGE

if [ "$AGE" -ge 18 ]
then
    echo "Eligible to Vote"
else
    echo "Not Eligible to Vote"
fi
```

## Script Screenshot

![if-else Script](screenshots/if-else-script.png)

## Output Screenshot

![if-else Output](screenshots/if-else-output.png)

---

# Exercise 3 – elif Ladder

## Script

```bash
#!/bin/bash

read -p "Enter Marks: " MARKS

if [ "$MARKS" -ge 90 ]
then
    echo "Grade A+"
elif [ "$MARKS" -ge 80 ]
then
    echo "Grade A"
elif [ "$MARKS" -ge 70 ]
then
    echo "Grade B"
else
    echo "Grade C"
fi
```

## Script Screenshot

![elif Ladder Script](screenshots/elif-ladder-script.png)

## Output Screenshot

![elif Ladder Output](screenshots/elif-ladder-output.png)

---

# Exercise 4 – Nested if

## Script

```bash
#!/bin/bash

read -p "Username: " USER

read -sp "Password: " PASS
echo

if [ "$USER" = "admin" ]
then
    if [ "$PASS" = "admin123" ]
    then
        echo "Login Successful"
    else
        echo "Wrong Password"
    fi
else
    echo "Invalid User"
fi
```

## Script Screenshot

![Nested if Script](screenshots/nested-if-script.png)

## Output Screenshot

![Nested if Output](screenshots/nested-if-output.png)

---

# Exercise 5 – Case Statement

## Script

```bash
#!/bin/bash

echo "1. Date"
echo "2. Current Directory"
echo "3. Logged-in User"

read -p "Enter Choice: " CHOICE

case $CHOICE in
1)
    date
    ;;
2)
    pwd
    ;;
3)
    whoami
    ;;
*)
    echo "Invalid Choice"
    ;;
esac
```

## Script Screenshot

![Case Statement Script](screenshots/case-statement-script.png)

## Output Screenshot

![Case Statement Output](screenshots/case-statement-output.png)
