# Day-13 User Management Project

# Interview Questions and Answers

---

## 1. What is user management in Linux?

**Answer:**

User management is the process of creating, modifying, deleting, and maintaining user accounts in a Linux system.

It helps administrators:

- Manage user access
- Improve system security
- Control permissions
- Organize multiple users

---

## 2. Which command is used to create a new user?

**Answer:**

The `useradd` command is used to create a new user.

Example:

```bash
sudo useradd -m username
```

Explanation:

- `useradd` → Creates a new user.
- `-m` → Creates the user's home directory.

---

## 3. Which command is used to delete a user?

**Answer:**

The `userdel` command removes a user account.

Example:

```bash
sudo userdel -r username
```

Explanation:

- `userdel` → Deletes the user.
- `-r` → Removes the user's home directory.

---

## 4. How do you list all users in Linux?

**Answer:**

Users are stored in the `/etc/passwd` file.

Example:

```bash
cut -d: -f1 /etc/passwd
```

Explanation:

- `cut` extracts data from a file.
- `-d:` uses `:` as the delimiter.
- `-f1` displays only the username field.

---

## 5. What is the purpose of the `/etc/passwd` file?

**Answer:**

The `/etc/passwd` file stores user account information such as:

- Username
- User ID (UID)
- Group ID (GID)
- Home directory
- Default shell

---

## 6. How do you lock a user account?

**Answer:**

Use:

```bash
sudo passwd -l username
```

Explanation:

The `-l` option locks the user's password and prevents login.

---

## 7. How do you unlock a user account?

**Answer:**

Use:

```bash
sudo passwd -u username
```

Explanation:

The `-u` option unlocks the user's password.

---

## 8. How do you check whether a user exists?

**Answer:**

Use:

```bash
id username
```

or

```bash
grep username /etc/passwd
```

These commands verify whether the user exists on the system.

---

## 9. How do you display user information?

**Answer:**

Use:

```bash
id username
```

It displays:

- UID
- GID
- Groups

---

## 10. What is a UID in Linux?

**Answer:**

UID (User ID) is a unique number assigned to every user.

- Root user → UID 0
- Regular users usually start from UID 1000.

---

## 11. What is a GID?

**Answer:**

GID (Group ID) identifies the user's primary group.

It helps Linux manage permissions for groups of users.

---

## 12. Why is user management important?

**Answer:**

User management helps to:

- Secure the system
- Control user access
- Manage permissions
- Prevent unauthorized access
- Organize user accounts

---

## 13. How can shell scripts automate user management?

**Answer:**

Shell scripts can automate tasks such as:

- Creating users
- Deleting users
- Listing users
- Locking and unlocking accounts
- Displaying user information

Automation saves time and reduces manual work.

---

## 14. Which scripts were created in this project?

**Answer:**

Scripts created:

- `create_user.sh`
- `delete_user.sh`
- `list_users.sh`
- `lock_unlock_user.sh`
- `user_info.sh`

These scripts automate common Linux user administration tasks.

---

## 15. What skills did you learn in this project?

**Answer:**

Skills learned:

- Linux user management
- Bash scripting
- User creation and deletion
- User account security
- Locking and unlocking accounts
- User information management
- Linux administration basics

---

# Day-13 Practical Scripts

## create_user.sh

Purpose:

Creates a new Linux user.

---

## delete_user.sh

Purpose:

Deletes an existing Linux user.

---

## list_users.sh

Purpose:

Displays all system users.

---

## lock_unlock_user.sh

Purpose:

Locks and unlocks user accounts.

---

## user_info.sh

Purpose:

Displays detailed information about a user.



---

## 16. What is the difference between `useradd` and `adduser`?

**Answer:**

`useradd` is a low-level command for creating users.

`adduser` is a user-friendly interactive script available on many Linux distributions.

Example:

```bash
sudo useradd -m john
sudo adduser john
```

Explanation:

- `useradd` requires more options.
- `adduser` asks for user details interactively.

---

## 17. What is the root user?

**Answer:**

The root user is the administrator account in Linux.

Characteristics:

- Has UID 0
- Has complete control over the system
- Can access all files and directories
- Can create, modify, and delete users

---

## 18. What is the purpose of the `/etc/shadow` file?

**Answer:**

The `/etc/shadow` file stores encrypted user passwords and password-related information.

It contains:

- Encrypted passwords
- Password expiration dates
- Account expiration details

Only the root user can read this file.

---

## 19. How do you change a user's password?

**Answer:**

Use:

```bash
passwd username
```

Example:

```bash
sudo passwd john
```

Explanation:

The `passwd` command updates the user's password securely.

---

## 20. How do you switch from one user to another?

**Answer:**

Use:

```bash
su username
```

or

```bash
sudo su - username
```

Explanation:

These commands allow you to switch to another user account.

---

## 21. How do you find the currently logged-in user?

**Answer:**

Use:

```bash
whoami
```

or

```bash
id
```

Explanation:

- `whoami` displays the current username.
- `id` displays the username, UID, GID, and groups.

---

## 22. What is the purpose of the `groups` command?

**Answer:**

The `groups` command displays the groups to which a user belongs.

Example:

```bash
groups
```

or

```bash
groups username
```

This helps administrators verify user permissions.

---

## 23. How do you create a group in Linux?

**Answer:**

Use:

```bash
sudo groupadd developers
```

Explanation:

`groupadd` creates a new user group that can be assigned to users.

---

## 24. How do you add a user to a group?

**Answer:**

Use:

```bash
sudo usermod -aG developers username
```

Explanation:

- `usermod` modifies a user account.
- `-aG` appends the user to the specified group without removing existing group memberships.

---

## 25. Why is user management important in Linux?

**Answer:**

User management is essential because it:

- Improves system security
- Controls user access
- Manages permissions
- Prevents unauthorized access
- Supports multi-user environments
- Simplifies system administration
- Helps enforce organizational security policies



---

## 16. What is the difference between `useradd` and `adduser`?

**Answer:**

| `useradd` | `adduser` |
|-----------|-----------|
| Low-level command | User-friendly interactive command |
| Requires manual options | Asks for user details automatically |
| Used in scripts | Used for manual user creation |

**Example:**

```bash
sudo useradd -m john
sudo adduser john
```

---

## 17. Why do we use the root user?

**Answer:**

The **root user** is the administrator account in Linux.

It is used to:

- Install software
- Create or delete users
- Modify system files
- Manage services
- Perform administrative tasks

**Note:** The root user has **UID 0**.

---

## 18. What is the purpose of the `/etc/shadow` file?

**Answer:**

The `/etc/shadow` file stores encrypted user passwords and password policies.

It contains:

- Encrypted passwords
- Password expiry information
- Password aging details

**Why?**

It improves system security by protecting password information.

---

## 19. How do you change a user's password?

**Answer:**

Use:

```bash
sudo passwd username
```

**Example:**

```bash
sudo passwd john
```

**Why?**

It securely updates the user's password.

---

## 20. How do you switch to another user?

**Answer:**

Use:

```bash
su username
```

or

```bash
su - username
```

**Why?**

It allows administrators to work as another user for testing or administration.

---

## 21. How do you find the currently logged-in user?

**Answer:**

Commands:

```bash
whoami
```

or

```bash
id
```

**Why?**

These commands display the current user's identity.

---

## 22. What is the purpose of the `groups` command?

**Answer:**

The `groups` command shows the groups a user belongs to.

**Example:**

```bash
groups
```

or

```bash
groups username
```

**Why?**

It helps verify user permissions and access rights.

---

## 23. How do you create a group in Linux?

**Answer:**

Use:

```bash
sudo groupadd developers
```

**Why?**

Groups help manage permissions for multiple users.

---

## 24. How do you add a user to a group?

**Answer:**

Use:

```bash
sudo usermod -aG developers username
```

**Why?**

It gives the user additional group permissions without removing existing group memberships.

---

## 25. Why is user management important?

**Answer:**

User management is important because it:

- Improves system security
- Controls user access
- Manages permissions
- Prevents unauthorized access
- Supports multiple users
- Simplifies system administration
