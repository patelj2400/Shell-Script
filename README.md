# Linux Shell Scripting Guide

## Table of Contents
1. [Introduction](#introduction)
2. [Basic About Shell](#basic-about-shell)
   - [What is a Linux Shell?](#what-is-a-linux-shell)
   - [How to check shell type](#how-to-check-shell-type)
   - [How to get OS information](#how-to-get-os-information)
   - [How to check how many shells installed in your OS](#how-to-check-how-many-shells-installed-in-your-os)
   - [How to switch shell on your machine](#how-to-switch-shell-on-your-machine)
3. [Basic About Shell Script](#basic-about-shell-script)
   - [What is Shell Scripting?](#what-is-shell-scripting)
   - [Common Shell Commands](#common-shell-commands)
   - [What is the Shebang Line?](#what-is-the-shebang-line)
   - [Creating First Shell Script](#creating-first-shell-script)
   - [How to Run a Shell Script?](#how-to-run-a-shell-script)
   - [What is rwx Permission?](#what-is-rwx-permission)
   - [Key Shortcuts](#key-shortcuts)
   - [How to Write Single Line and Multiline Comments?](#how-to-write-single-line-and-multiline-comments)
4. [Explain Variables](#explain-variables)
   - [What is a Variable in Shell Scripting?](#what-is-a-variable-in-shell-scripting)
   - [Declaring a Variable](#declaring-a-variable)
   - [Accessing a Variable](#accessing-a-variable)
   - [Rules for Variable Naming](#rules-for-variable-naming)
   - [How to Use a Variable in echo](#how-to-use-a-variable-in-echo)
   - [What is a Constant Variable](#what-is-a-constant-variable)
   - [System Variables](#system-variables)
   - [Variable Scope](#variable-scope)
     - [Local Variable](#local-variable)
     - [Global Variable](#global-variable)
     - [Special Variables](#special-variables)
5. [Explain Arrays](#explain-arrays)
   - [What is an Array in Shell Scripting?](#what-is-an-array-in-shell-scripting)
   - [Accessing Elements in an Array](#accessing-elements-in-an-array)
   - [Printing All Elements in an Array](#printing-all-elements-in-an-array)
   - [Getting the Length of an Array](#getting-the-length-of-an-array)
   - [Defining and Accessing an Empty Array](#defining-and-accessing-an-empty-array)
   - [Adding Values and Accessing to the Empty Array](#adding-values-and-accessing-to-the-empty-array)
   - [How to Get Specific Values from an Array](#how-to-get-specific-values-from-an-array)
   - [How to Update an Array](#how-to-update-an-array)
   - [What is a Key-Value Pair in an Array?](#what-is-a-key-value-pair-in-an-array)
   - [Defining an Associative Array](#defining-an-associative-array)
6. [Explain Strings](#explain-strings)
   - [What is a String in Shell Scripting?](#what-is-a-string-in-shell-scripting)
   - [Types of Strings in Shell](#types-of-strings-in-shell)
   - [String Operations](#string-operations)
7. [User Interaction](#user-interaction)
   - [How to Take a User Input (Basic User Input)](#how-to-take-a-user-input-basic-user-input)
   - [Taking Input on the Same Line](#taking-input-on-the-same-line)
   - [Hiding User Input (Password)](#hiding-user-input-password)
   - [Taking Multiple Inputs in One Line](#taking-multiple-inputs-in-one-line)
8. [Operations in Shell](#operations-in-shell)
   - [Arithmetic Operations](#arithmetic-operations)
   - [Comparison Operations](#comparison-operations)
   - [String Operations](#string-operations)
   - [Logical Operations](#logical-operations)
9. [Control Statements](#control-statements)
   - [if Statement](#if-statement)
   - [if-else Statement](#if-else-statement)
   - [elif Statement](#elif-statement)
   - [case Statement](#case-statement)
   - [Jump Statement](#jump-statement)
   - [Select Statement](#select-statement)
10. [Loops (Iteration)](#loops-iteration)
    - [For Loop](#for-loop)
    - [While Loop](#while-loop)
    - [Until Loop](#until-loop)
    - [Infinite Loop](#infinite-loop)
11. [What is Function](#what-is-function)
    - [How to Make a Function](#how-to-make-a-function)
    - [Function with Parameters](#function-with-parameters)
    - [Function with Return Value](#function-with-return-value)
    - [Shifting Arguments](#shifting-arguments)
12. [Other Useful Concepts](#other-useful-concepts)
    - [Redirection, Bash Variables, Sleep, Exit, Logger, Dev/Null](#redirection-bash-variables-sleep-exit-logger-dev-null)
    - [Debugging Methods](#debugging-methods)
    - [Run Scripts in the Background](#run-scripts-in-the-background)
    - [Crontab Usage](#crontab-usage)

---

## Introduction
This guide provides an overview of Linux shell scripting, its purpose, and how to get started with writing and executing shell scripts.

---

## Basic About Shell
### What is a Linux Shell?
A Linux shell is a command-line interface (CLI) used for interacting with the operating system. It allows users to enter commands to perform various tasks, like file management, running programs, and automating tasks through scripting.

### How to Check Shell Type
To check the type of shell you're using, you can use the following commands:

    echo $0

    echo $0: This prints the name of the current shell.

    echo $SHELL

### How to Get OS Information

    cat /etc/os-release

    or 

    uname -a

### How to Check How Many Shells Installed in Your OS

    cat /etc/shells

### How to Switch Shell on Your Machine
You can switch between different shells by using the chsh command or directly by specifying the shell you want to use. For example:

    chsh -s /bin/bash
    chsh -s /bin/zsh

    or 

    sh
    bash
    zsh

---

## Basic About Shell Script
### What is Shell Scripting?
Shell scripting is a way to automate tasks in Linux using a script written in a shell language. The shell script contains a series of commands executed by the shell interpreter.

### Common Shell Commands


#### File and Directory Management
| Command | Description |
|---------|-------------|
| `ls` | List files and directories |
| `pwd` | Print working directory (current directory) |
| `cd <directory>` | Change directory |
| `mkdir <directory>` | Create a new directory |
| `rmdir <directory>` | Remove an empty directory |
| `rm <file>` | Remove a file |
| `rm -r <directory>` | Remove a directory and its contents recursively |
| `cp <source> <destination>` | Copy a file or directory |
| `mv <source> <destination>` | Move or rename a file or directory |
| `touch <file>` | Create an empty file |

#### File Viewing & Editing
| Command | Description |
|---------|-------------|
| `cat <file>` | View file contents |
| `less <file>` | View file contents one page at a time |
| `head <file>` | Display the first 10 lines of a file |
| `tail <file>` | Display the last 10 lines of a file |
| `nano <file>` | Edit a file using the Nano editor |
| `vim <file>` | Edit a file using the Vim editor |

#### File Permissions & Ownership
| Command | Description |
|---------|-------------|
| `chmod <permissions> <file>` | Change file permissions (e.g., `chmod 755 myscript.sh`) |
| `chown <owner>:<group> <file>` | Change file owner |

#### Process Management
| Command | Description |
|---------|-------------|
| `ps` | Display running processes |
| `top` | Show system resource usage and processes |
| `kill <PID>` | Terminate a process by Process ID |
| `killall <process_name>` | Kill all processes with a given name |

#### Networking
| Command | Description |
|---------|-------------|
| `ping <host>` | Check connectivity to a host |
| `curl <URL>` | Fetch a web page or API response |
| `wget <URL>` | Download a file from a URL |
| `netstat -tulnp` | Show active network connections |

#### User Management
| Command | Description |
|---------|-------------|
| `whoami` | Show the current logged-in user |
| `who` | Show logged-in users |
| `sudo <command>` | Run a command as a superuser |
| `su <user>` | Switch to another user |

#### Disk and Storage
| Command | Description |
|---------|-------------|
| `df -h` | Show disk usage |
| `du -sh <directory>` | Show size of a directory |
| `mount / unmount` | Mount or unmount a drive |

#### Searching & Filtering
| Command | Description |
|---------|-------------|
| `grep <pattern> <file>` | Search for a pattern in a file |
| `find <directory> -name <filename>` | Find a file by name |
| `locate <filename>` | Locate a file in the system |

#### Archiving & Compression
| Command | Description |
|---------|-------------|
| `tar -cvf archive.tar <directory>` | Create a tar archive |
| `tar -xvf archive.tar` | Extract a tar archive |
| `zip -r archive.zip <directory>` | Create a zip file |
| `unzip archive.zip` | Extract a zip file |

#### System Information
| Command | Description |
|---------|-------------|
| `uname -a` | Display system information |
| `uptime` | Show system uptime |
| `free -h` | Show memory usage |
| `history` | Show command history |

#### Other Useful Commands
| Command | Description |
|---------|-------------|
| `clear` | Clear the terminal screen |
| `echo "text"` | Print text to the terminal |
| `date` | Show the current date and time |



### What is the Shebang Line?
The Shebang line (#!/bin/bash) at the top of a script specifies the interpreter to be used to execute the script. It tells the system which program should be used to run the script. For example:

    #!/bin/bash
    echo "Hello, World!"

### Creating First Shell Script
To create your first shell script:

1. Open a terminal and use a text editor like nano or vim to create a script file:
    
    ```bash
    nano my_script.sh
    vim my_script.sh
    vi my_script.sh

2. Add a simple command (By pressing I(i) key to insert mode) 
    ```bash
    echo "Hello, World!"

3. Save and exit the editor (By using ESC and then wq! to save and exit )

4. Make it executable:
    ```bash
    chmod +x my_script.sh
5. Run the script:
    ```bash
    ./my_script.sh
    bash my_script.sh
    sh my_script.sh

### How to Run a Shell Script?
There are several ways to run a shell script:


    ./script.sh         :  If the script is in the current directory and executable.
    /path/script.sh     :  Full path to the script.
    bash script.sh      :  Run the script with bash explicitly.
    sh script.sh        :  Run the script with sh.

### What is rwx Permission?
| Permission | Symbol | Description |
|------------|--------|-------------|
| Read       | `r`    | Allows viewing the content of the file |
| Write      | `w`    | Allows modifying or editing the file |
| Execute    | `x`    | Allows running the file as a program |

How to change the permission of a shell script?
To change the permissions of a shell script, use the chmod command:

    chmod +x script.sh   # Adds execute permission
    chmod u+x script.sh  # Adds execute permission to the user
    chmod 755 script.sh  # Sets read, write, execute for user and read, execute for others

### Key Shortcuts

    Ctrl + C    : Terminates the running process.
    Ctrl + Z    : Suspends the current process.


### How to Write Single Line and Multiline Comments?

    Single-line comment     :   Begin with a #
    # This is a single-line comment 

    Multiline comment: Use  :   'comment' or simply use multiple # lines:

    : '
    This is a multiline
    comment in a shell script.
    '
---

## Explain Variables
### What is a Variable in Shell Scripting?
A **variable** in shell scripting is a placeholder for storing data such as strings, numbers, or command outputs. Variables help in reusing values, making scripts more dynamic and flexible.


| Variable Type      | Description |
|--------------------|-------------|
| **Local Variable** | Available only within the current shell session or script. Not accessible by child processes. |
| **Environment (Global) Variable** | Available across all shell sessions and inherited by child processes. Defined using `export`. |
| **Special Variable** | Predefined by the shell and provides system-related information, such as script name, arguments, process ID, etc. |

### Declaring a Variable
In shell scripting, variables are assigned without any data type.

#### Example:
   
    name="Alice"
    age=25

### Accessing a Variable
To access a variable, use the `$` symbol before the variable name.

### Example:

    echo "My name is $name and I am $age years old."

    My name is Alice and I am 25 years old.

### Rules for Variable Naming
1.  A variable name can contain letters, numbers, and underscores (_).
2.  A variable name must not start with a number.
3.  No spaces around the = sign while assigning a value.
4.  Use { } when referencing variables within strings to avoid ambiguity.

### How to Use a Variable in echo
### Example:

    fruit="Apple"
    echo "I like ${fruit}s."  # Correct

   
    output:
    I like Apples.

### What is a Constant Variable
A **constant variable** is a variable whose value cannot be changed after it is assigned. In shell scripting, you can make a variable read-only using the `readonly` command.

1. Declaring a Constant Variable
Use the `readonly` keyword to make a variable constant.

### Example:

    readonly PI=3.14
    echo "Value of PI: $PI"

2. Trying to modify the constant variable

    ```sh
    PI=3.1415  # This will cause an error

    Output:
    Value of PI: 3.14
    script.sh: line X: PI: readonly variable

### System Variables
## **Common System Variables**
| Variable  | Description |
|-----------|-------------|
| `$HOME`   | User's home directory |
| `$USER`   | Current logged-in username |
| `$SHELL`  | Default shell (e.g., `/bin/bash`, `/bin/zsh`) |
| `$PATH`   | Directories to search for executable files |
| `$PWD`    | Current working directory |
| `$OLDPWD` | Previous working directory |
| `$EDITOR` | Default text editor (e.g., `nano`, `vim`) |
| `$LANG`   | System language settings |
| `$LOGNAME` | Current logged-in username |
| `$TERM`   | Terminal type (e.g., `xterm`, `vt100`) |
| `$HISTFILE` | Path to history file |
| `$HISTSIZE` | Number of history commands stored in memory |

---

## **Shell-Specific Variables**
| Variable        | Description |
|----------------|-------------|
| `$BASH_VERSION` | Bash shell version |
| `$BASH_SOURCE`  | Name of the script being executed |
| `$BASHPID`      | Process ID of the current Bash shell |
| `$PS1`          | Primary shell prompt format |

---

## **Process & System Variables**
| Variable | Description |
|----------|-------------|
| `$$`    | Process ID of the current shell |
| `$!`    | Process ID of the last background process |
| `$?`    | Exit status of the last executed command |
| `$#`    | Number of arguments passed to a script |
| `$*`    | All arguments passed to a script as a single string |
| `$@`    | All arguments passed to a script as separate strings |

---

## **Networking Variables**
| Variable     | Description |
|-------------|-------------|
| `$HOSTNAME` | System's hostname |
| `$DISPLAY`  | Display server used in GUI systems |
| `$SSH_CLIENT` | IP address of the SSH client |
| `$SSH_TTY`  | TTY device used for SSH sessions |

### Variable Scope
#### Local Variable


A local variable is only accessible within the current shell session.

    local_var="Local"
    echo $local_var  
    
    Output: Local


#### Global Variable
A global variable is accessible in all shells and child processes.
These variables are available to all processes and shell sessions.
They are defined using export, making them available to child processes.

    export global_var="Global"
    echo $global_var  
    
    Output: Global

#### Special Variables

Special variables are predefined by the shell and provide useful information about the shell environment, script execution, and process management.

### List of Special Variables

| Variable | Description |
|----------|-------------|
| `$0`     | Name of the script |
| `$1, $2, ...` | Command-line arguments passed to the script (e.g., `$1` is the first argument) |
| `$#`     | Number of arguments passed to the script |
| `$*`     | All command-line arguments as a single string |
| `$@`     | All command-line arguments as separate strings |
| `$$`     | Process ID (PID) of the current shell |
| `$!`     | Process ID (PID) of the last background process |
| `$?`     | Exit status of the last executed command |

---

## Explain Arrays
### What is an Array in Shell Scripting?
An **array** in shell scripting is a collection of multiple values stored under a single variable name. Arrays help in managing multiple data elements efficiently.

1. Features of Arrays:
- Can store multiple values in a single variable.
- Indexed numerically, starting from `0`.
- Can be accessed using index numbers.

2. Declaring an Array

    ```bash
    my_array=("Apple" "Banana" "Cherry" "Mango")


### Accessing Elements in an Array
Use the **index number** to retrieve specific values from an array.  
Array indexing in shell scripting starts from **0**.

### Example:

    fruits=("Apple" "Banana" "Cherry" "Mango")

    echo ${fruits[0]}  # Access first element
    echo ${fruits[2]}  # Access third element

    Output:
    Apple
    Cherry


### Printing All Elements in an Array
To print all elements of an array, use `@` or `*` inside curly braces `{}`.

### Example:

    fruits=("Apple" "Banana" "Cherry" "Mango")

    echo ${fruits[@]}  # Prints all elements

    or 

    echo ${fruits[*]}

    Output:
    Apple Banana Cherry Mango

### Getting the Length of an Array
To get the number of elements in an array, use `#` before the array name.

### Example:

    fruits=("Apple" "Banana" "Cherry" "Mango")

    echo ${#fruits[@]}  # Prints the number of elements in the array

    or 

    echo ${#fruits[*]} 

    Output:
    4

### Defining and Accessing an Empty Array
1. If you want to define an empty array in shell scripting, you can do it like this:

    ```sh
    emptyArray=()

2. If you try to access an element from an **empty array**, it will return an empty result because no values have been assigned yet.

    Accessing the first element of an empty array

    ```sh
    echo ${emptyArray[0]}  # This will not display anything

    Output:
    (Empty output)   

### Adding Values and Accessing to the Empty Array
1. After defining an empty array, you can add values to it, and then accessing those values will work as expected.

    ```sh
    emptyArray+=("Apple")   # Add "Apple" to the array
    emptyArray+=("Banana")  # Add "Banana" to the array

2. Accessing the first element

    ```sh
    echo ${emptyArray[0]}   # Prints "Apple"

    Output:
    Apple
   
3.  Accessing the second element

     ```sh
    echo ${emptyArray[1]}   # Prints "Banana"

    Output:
    Banana

4. Alternative: Adding Multiple Values

    You can add multiple values to an array at once by listing them within the parentheses.
    
    ```sh
    emptyArray+=("Cherry" "Mango" "Orange")

5.  Printing all elements

     ```sh
    echo ${emptyArray[*]}   # Prints "Apple Banana Cherry Mango Orange"

    Output:
    Apple Banana Cherry Mango Orange

### How to Get Specific Values from an Array

To get specific values from an array, you can access the array using the **index** of the element you want to retrieve. In shell scripting, arrays are zero-indexed, meaning the first element has an index of **0**.

1.  Accessing Specific Values
    ```sh
    fruits=("Apple" "Banana" "Cherry" "Mango")

    echo ${fruits[3]}  # Accesses the first element, prints "Apple"

    Output:
    Mango

2. Accessing Multiple Specific Values

    You can access multiple specific values from an array by referencing their indices, separated by spaces.
    ```sh
    fruits=("Apple" "Banana" "Cherry" "Mango")

    Accessing the second and fourth elements

    echo ${fruits[1]} ${fruits[3]}  # Prints "Banana Mango"

    Output:

    Banana Mango

### How to Update an Array
In shell scripting, you can update an array by directly assigning a new value to a specific index, or by adding new values using the `+=` operator.

To update a specific element in an array, use the index of the element and assign a new value to it.

### Example:

    fruits=("Apple" "Banana" "Cherry" "Mango")

    # Update the second element (index 1) to "Orange"
    fruits[1]="Orange"

    # Print all elements to verify the update
    echo ${fruits[@]}  # Prints "Apple Orange Cherry Mango"

    Output:
    Apple Orange Cherry Mango

### What is a Key-Value Pair in an Array?

In shell scripting, arrays are typically indexed by **numeric indices** (e.g., `0`, `1`, `2`, etc.). However, in some languages like **associative arrays** or **hashmaps**, elements are indexed by **keys** (which can be strings) and mapped to **values**. This is known as **key-value pairs**.

While shell scripting (Bash) traditionally doesn't support true associative arrays in older versions, modern versions (Bash 4 and above) support **associative arrays**, where you can use strings as keys to store and access values.

#### Important Notes:
-   Keys in associative arrays must be unique.
-   Values can be of any type: strings, numbers, or even other arrays.

### Defining an Associative Array

1. Example A

    ```sh
    declare -A person

    # Assign key-value pairs
    person["name"]="Alice"
    person["age"]=25
    person["city"]="New York"

    echo ${person["name"]}  # Prints "Alice"
    echo ${person["age"]}   # Prints "25"
    echo ${person["city"]}  # Prints "New York"

    Output:
    Alice
    25
    New York

2. Example B

    ```sh
    declare -A myArray

    # Assign key-value pairs to the array
    myArray=( [name]="Jay" [age]=28 [city]="Toronto" )

    # Accessing the values using keys
    echo "Name is ${myArray[name]}"    # Prints "Name is Jay"
    echo "Age is ${myArray[age]}"      # Prints "Age is 28"
    echo "City is ${myArray[city]}"    # Prints "City is Toronto"

    Output:
    Name is Jay
    Age is 28
    City is Toronto

---

## Explain Strings
### What is a String in Shell Scripting?
A string in shell scripting is a sequence of characters enclosed within single (') or double (") quotes. Strings are commonly used to store and manipulate text data in shell scripts.

### Types of Strings in Shell
- **Single-quoted strings (`'`)**: Treat everything literally, including special characters like `$` and `\`.  
  ```sh
  str='Hello $USER'  
  ```
  Output: 
  ```sh
  Output: Hello $USER (does not expand $USER)
  ```

- **Double-quoted strings (")**: Allow variable expansion and command substitution.
  ```sh
  USER=Jack
  str="Hello $USER" 
  ```
  Output: 
  ```sh
  Output: Hello Jack
  ```
- **Unquoted strings**: If a string is not enclosed in quotes, it is subject to word splitting and pathname expansion (also known as globbing).
  ```sh
  str=Hello World
  echo $str  
  ```
  Output: 
  ```sh
  Output: Hello World (treated as two separate arguments)
  ```
### String Operations

| **Operation**                     | **Syntax / Example** | **Output** |
|------------------------------------|----------------------|-----------|
| **1. String Length**               | `echo ${#str}`      | Length of string |
| **2. Substring Extraction**        | `echo ${str:0:5}`   | Extracts substring |
| **3. Substring Replacement**       | `echo ${str/old/new}` | Replaces first occurrence |
| **4. Replace All Occurrences**     | `echo ${str//old/new}` | Replaces all occurrences |
| **5. String Concatenation**        | `str3="$str1 $str2"` | Merges strings |
| **6. String Comparison**           | `[ "$str1" = "$str2" ]` | Compares strings |
| **7. Check if String is Empty**    | `[ -z "$str" ]`     | Returns true if empty |
| **8. Check if String is Not Empty**| `[ -n "$str" ]`     | Returns true if not empty |
| **9. Convert to Uppercase**        | `echo ${str^^}`     | Converts to uppercase |
| **10. Convert to Lowercase**       | `echo ${str,,}`     | Converts to lowercase |
| **11. Check if String Contains**   | `[[ "$str" == *"text"* ]]` | Checks substring presence |
| **12. Remove Prefix**              | `echo ${str#prefix}` | Removes prefix |
| **13. Remove Suffix**              | `echo ${str%suffix}` | Removes suffix |
| **14. Extract File Name**          | `basename "$filepath"` | Extracts filename |
| **15. Extract File Extension**     | `echo ${filename##*.}` | Extracts extension |
| **16. Find & Replace in String**   | `echo ${str//test/example}` | Replaces occurrences |
| **17. Trim Leading/Trailing Spaces** | `echo "$str" | xargs` | Removes spaces |
| **18. Reverse a String**           | `echo "$str" | rev` | Reverses string |
| **19. Split a String**             | `IFS=',' read -ra arr <<< "$str"` | Splits by delimiter |
| **20. Count Occurrences**          | `echo "$str" | awk -F"word" '{print NF-1}'` | Counts occurrences |


## Examples and Outputs of String Operations

| **Example** | **Output** |
|-------------|------------|
| `str="Hello World"`<br>`echo ${#str}` | `11` |
| `str="Hello World"`<br>`echo ${str:0:5}` | `Hello` |
| `str="Hello World"`<br>`echo ${str/World/Shell}` | `Hello Shell` |
| `str="banana"`<br>`echo ${str//a/X}` | `bXnXnX` |
| `str1="Hello"`<br>`str2="World"`<br>`echo "$str1 $str2"` | `Hello World` |
| `str1="Hello"`<br>`str2="Hello"`<br>`[ "$str1" = "$str2" ] && echo "Equal"` | `Equal` |
| `str=""`<br>`[ -z "$str" ] && echo "Empty"` | `Empty` |
| `str="Hello"`<br>`[ -n "$str" ] && echo "Not Empty"` | `Not Empty` |
| `str="hello"`<br>`echo ${str^^}` | `HELLO` |
| `str="HELLO"`<br>`echo ${str,,}` | `hello` |
| `str="Hello World"`<br>`[[ "$str" == *World* ]] && echo "Found"` | `Found` |
| `str="HelloWorld"`<br>`echo ${str#Hello}` | `World` |
| `str="HelloWorld"`<br>`echo ${str%World}` | `Hello` |
| `filepath="/home/user/file.txt"`<br>`echo $(basename "$filepath")` | `file.txt` |
| `filename="document.txt"`<br>`echo ${filename##*.}` | `txt` |
| `str="This is a test"`<br>`echo ${str//test/example}` | `This is a example` |
| `str="  Hello World  "`<br>`echo "$str" | xargs` | `Hello World` |
| `str="hello"`<br>`echo "$str" | rev` | `olleh` |
| `str="apple,banana,orange"`<br>`IFS=',' read -ra arr <<< "$str"`<br>`echo ${arr[0]}` | `apple` |
| `str="hello hello world"`<br>`echo "$str" | awk -F"hello" '{print NF-1}'` | `2` |


---

## User Interaction
### How to Take a User Input (Basic User Input)
To take basic user input, use the `read` command. The input will be stored in a variable.

  
    echo "Enter your name:"
    read name
    echo "Hello, $name!"

    Output:
    Enter your name: Jack
    Hello, Jack!


### Taking Input on the Same Line
You can take user input on the same line as the prompt by using the -p option with read.

    read -p "Enter your age: " age
    echo "Your age is $age."

    Output:
    Enter your age: 30
    Your age is 30
    
### Hiding User Input (Password)

    read -s -p "Enter your password: " password
    echo -e "\nYour password is securely saved."

### Taking Multiple Inputs in One Line
To take multiple inputs in a single line, you can use the read command with multiple variables separated by spaces.

    read -p "Enter your first name, last name, and age: " first_name last_name age
    echo "Your first name is $first_name, last name is $last_name, and your age is $age."
    
    Output:
    Your first name is Jack, last name is Pual, and your age is 30.
---

## Operations in Shell
### Arithmetic Operations
In Shell, arithmetic operations can be performed using the `(( ))` or `let` commands.

#### Common Arithmetic Operators:
- `+` : Addition
- `-` : Subtraction
- `*` : Multiplication
- `/` : Division
- `%` : Modulus (remainder)
- `**` : Exponentiation (for certain shells like Bash)

| **Operation**   | **Operator** | **Example**                                          | **Output**           |
|-----------------|--------------|------------------------------------------------------|----------------------|
| Addition        | `+`          | `(( result = 10 + 5 ))`<br>`echo $result`             | `15`                 |
| Subtraction     | `-`          | `(( result = 10 - 5 ))`<br>`echo $result`             | `5`                  |
| Multiplication  | `*`          | `(( result = 10 * 5 ))`<br>`echo $result`             | `50`                 |
| Division        | `/`          | `(( result = 10 / 5 ))`<br>`echo $result`             | `2`                  |
| Modulus         | `%`          | `(( result = 10 % 3 ))`<br>`echo $result`             | `1`                  |
| Exponentiation  | `**`         | `(( result = 2 ** 3 ))`<br>`echo $result`             | `8`                  |

---

### Comparison Operations

#### Common Comparison Operators:
- `-eq` : Equal
- `-ne` : Not equal
- `-lt` : Less than
- `-le` : Less than or equal to
- `-gt` : Greater than
- `-ge` : Greater than or equal to

| **Operation**      | **Operator**    | **Example**                                                  | **Output**                   |
|--------------------|-----------------|--------------------------------------------------------------|------------------------------|
| Numeric Equal      | `-eq`           | `if [ 10 -eq 10 ]; then echo "Equal"; fi`                    | `Equal`                      |
| Numeric Not Equal  | `-ne`           | `if [ 10 -ne 5 ]; then echo "Not Equal"; fi`                 | `Not Equal`                  |
| Numeric Greater Than | `-gt`          | `if [ 10 -gt 5 ]; then echo "Greater"; fi`                    | `Greater`                    |
| Numeric Less Than  | `-lt`           | `if [ 5 -lt 10 ]; then echo "Less"; fi`                       | `Less`                       |
| String Equal       | `=`             | `if [ "$str1" = "$str2" ]; then echo "Equal"; fi`            | `Equal`                      |
| String Not Equal   | `!=`            | `if [ "$str1" != "$str2" ]; then echo "Not Equal"; fi`       | `Not Equal`                  |

### String Operations
All String operations already mentioned above:
| **Operation**             | **Syntax**                        | **Example**                                               | **Output**                     |
|---------------------------|-----------------------------------|-----------------------------------------------------------|--------------------------------|
| String Length             | `${#str}`                         | `str="Hello"`<br>`echo ${#str}`                            | `5`                            |
| Substring Extraction      | `${str:start:length}`             | `str="Hello"`<br>`echo ${str:1:3}`                         | `ell`                          |
| Replace First Occurrence  | `${str/old/new}`                  | `str="Hello"`<br>`echo ${str/Hello/Hi}`                    | `Hi`                           |
| Replace All Occurrences   | `${str//old/new}`                 | `str="banana"`<br>`echo ${str//a/X}`                       | `bXnXnX`                       |
| Concatenate Strings       | `"str1 str2"`                     | `str1="Hello"`<br>`str2="World"`<br>`echo "$str1 $str2"`   | `Hello World`                  |




### Logical Operations
#### Common Logical Operators:
- `&&` : AND (both conditions must be true)
- `||` : OR (at least one condition must be true)
- `!`  : NOT (negates the condition)

| **Operation**   | **Operator**   | **Example**                                                   | **Output**                |
|-----------------|----------------|---------------------------------------------------------------|---------------------------|
| AND             | `&&`           | `if [ 5 -lt 10 ] && [ 7 -gt 5 ]; then echo "True"; fi`        | `True`                    |
| OR              | `\|\|`          | `if [ 5 -lt 10 ] `\|\|` [ 7 -lt 5 ]; then echo "True"; fi`        | `True`                    |
| NOT             | `!`            | `if ! [ 5 -eq 10 ]; then echo "Not Equal"; fi`                | `Not Equal`               |

---


## Control Statements
### if Statement
The `if` statement allows you to execute a block of code if a condition is true.

#### Syntax:
```sh
if [ condition ]; then
    # commands
fi
```
#### Example: 
```sh
if [ $num -gt 5 ]; then
    echo "Number is greater than 5"
fi
```
### if-else Statement
The if-else statement allows you to execute one block of code if the condition is true, and another block if it's false.

#### Syntax:
```sh
if [ condition ]; then
    # commands if true
else
    # commands if false
fi
```
#### Example: 
```sh
if [ $num -gt 5 ]; then
    echo "Number is greater than 5"
else
    echo "Number is less than or equal to 5"
fi
```
### elif Statement
The elif (else if) statement allows you to test multiple conditions in sequence.
#### Syntax:
```sh
if [ condition ]; then
    # commands if true
elif [ condition2 ]; then
    # commands if condition2 is true
else
    # commands if all conditions are false
fi
```
#### Example: 
```sh
if [ $num -gt 5 ]; then
    echo "Number is greater than 5"
elif [ $num -eq 5 ]; then
    echo "Number is equal to 5"
else
    echo "Number is less than 5"
fi
```
### case Statement
The case statement allows you to execute commands based on a pattern match, making it useful for handling multiple possible conditions.
#### Syntax:
```sh
case $variable in
    pattern1)
        # commands
        ;;
    pattern2)
        # commands
        ;;
    *)
        # commands if no match
        ;;
esac
```
#### Example: 
```sh
case $fruit in
    "apple")
        echo "It's an apple"
        ;;
    "banana")
        echo "It's a banana"
        ;;
    *)
        echo "Unknown fruit"
        ;;
esac
```
### Jump Statement
Jump statements control the flow of execution in loops and scripts. The main jump statements are `break`, `continue`, and `exit`.

### 1. `break`

The `break` statement is used to exit from a loop (like `for`, `while`, or `until`) before the loop has finished all of its iterations. It's useful when a certain condition is met, and there’s no need to continue executing the loop.

#### Syntax:
```sh
break
```
#### Example:
```sh
for num in 1 2 3 4 5
do
    if [ $num -eq 3 ]; then
        break  # Exit the loop when num equals 3
    fi
    echo $num
done
```
#### Output: 
```sh
1
2
```
The loop breaks when num equals 3, so the remaining numbers aren’t printed.

### 2. `continue`
The `continue` statement skips the current iteration of a loop and proceeds to the next iteration. It’s used when you want to skip specific conditions but continue with the rest of the loop.
#### Syntax:
```sh
continue
```
#### Example:
```sh
for num in 1 2 3 4 5
do
    if [ $num -eq 3 ]; then
        continue  # Skip iteration when num equals 3
    fi
    echo $num
done
```
#### Output: 
```sh
1
2
4
5
```
The number 3 is skipped, and the loop continues with the next iteration.
### 3. `exit`
The `exit` statement skips the current iteration of a loop and proceeds to the next iteration. It’s used when you want to skip specific conditions but continue with the rest of the loop.
#### Syntax:
```sh
exit [exit_code]
```
- exit_code is optional. If omitted, it will default to 0 (success).

#### Example:
```sh
echo "Starting script..."
exit 0  # Exits the script with a success status code
echo "This will never be printed"
```
#### Output: 
```sh
Starting script...
```
- The script exits after the first echo, and the second echo isn’t executed.


### Select Statement
The select statement in shell scripting is used to create a simple menu system where the user can choose an option. It's typically used in interactive shell scripts to present a list of choices and then act based on the user’s selection.
#### Syntax:
```sh
select var in option1 option2 option3
do
    # commands based on $var
    break  # Optional: Exit the loop after the choice
done
```
#### Example: 
```sh
select fruit in apple banana cherry
do
    echo "You chose $fruit"
    break  # Exit the loop after a valid selection
done
```
#### Output: 
```sh
1) apple
2) banana
3) cherry
#? 2
You chose banana
```
---
## Loops (Iteration)
### For Loop
The `for` loop is used to iterate over a series of values or a sequence of commands. It’s commonly used when the number of iterations is known beforehand.
#### Syntax:
```sh
for variable in value1 value2 value3
do
    # commands
done
```
#### Example: 
```sh
for num in 1 2 3 4 5
do
    echo "Number: $num"
done
```
#### Output: 
```sh
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

### While Loop
The `while loop` is used to execute a block of code as long as a specified condition is true. It’s useful when you don't know the number of iterations in advance, but you have a condition to check.
#### Syntax:
```sh
while [ condition ]
do
    # commands
done
```
#### Example: 
```sh
num=1
while [ $num -le 5 ]
do
    echo "Number: $num"
    ((num++))  # Increment num
done
```
#### Output: 
```sh
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

### Until Loop
The `until loop` is the opposite of the `while loop`. It executes a block of code until a specified condition becomes true.


#### Syntax:
```sh
until [ condition ]
do
    # commands
done
```
#### Example: 
```sh
num=1
until [ $num -gt 5 ]
do
    echo "Number: $num"
    ((num++))  # Increment num
done

```
#### Output: 
```sh
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```
### Infinite Loop
An `infinite loop` continues to run forever unless interrupted. It’s often used in programs that need to constantly run, such as server processes, and can be broken manually with a `break or CTRL+C`.
#### Syntax:
```sh
while true
do
    # commands
done
```
#### Example: 
```sh
while true
do
    echo "This will print forever unless stopped"
    sleep 1  # Pause for 1 second between prints
done
```
#### Output: 
```sh
This will print forever unless stopped
This will print forever unless stopped
This will print forever unless stopped
...
```
- This loop continues indefinitely until it is manually stopped by the user `(CTRL+C or a break statement inside the loop)`.
---

## What is Function
A **function** in shell scripting is a reusable block of code that can be executed when called. Functions help in organizing code, improving readability, and reducing redundancy. They can take arguments, perform operations, and return values.
### How to Make a Function
To define a function in shell scripting, you use the following syntax:

#### Syntax:
```sh
function_name() {
    # commands
}
```
#### OR
```sh
function function_name {
    # commands
}
```
#### Example: 
```sh
greet() {
    echo "Hello, $1!"
}

greet "John"
```
#### Output: 
```sh
Hello, John!
```

### Function with Parameters
Functions can accept parameters, which are passed when the function is called. Parameters are accessed using `$1, $2, etc.,` for the first, second, and subsequent arguments.

#### Syntax:
```sh
function_name() {
    echo "First parameter: $1"
    echo "Second parameter: $2"
}
```
#### Example: 
```sh
greet_user() {
    echo "Hello, $1!"
    echo "You are $2 years old."
}

greet_user "Alice" 25
```
#### Output: 
```sh
Hello, Alice!
You are 25 years old.
```
### Function with Return Value
In shell scripting, functions don't return values in the same way as in other programming languages. However, you can simulate `return values` using the return statement for exit status or using output from the function `(echo).`

#### Syntax:
```sh
function_name() {
    echo "output_value"
}
```
#### Example: 
```sh
add_numbers() {
    echo $(($1 + $2))
}

result=$(add_numbers 5 10)
echo "The sum is: $result"
```
#### Output: 
```sh
The sum is: 15
```
### Shifting Arguments
In shell scripting, you can use the `shift` command to shift the positional parameters to the left. This means `$1` will become `$2`, `$2` will become `$3`, and so on. It is useful when dealing with a variable number of arguments.


#### Syntax:
```sh
shift  # Shifts arguments by one position
```
#### Example: 
```sh
process_args() {
    echo "First argument: $1"
    echo "Second argument: $2"
    shift
    echo "After shift:"
    echo "First argument: $1"
    echo "Second argument: $2"
}

process_args "apple" "banana" "cherry"
```
#### Output: 
```sh
First argument: apple
Second argument: banana
After shift:
First argument: banana
Second argument: cherry
```
---
## Other Useful Concepts
### Redirection, Bash Variables, Sleep, Exit, Logger, Dev/Null
#### 1. **Redirection**

`Redirection` is used to control the input and output of commands. It allows sending the output of a command to a file, or taking input from a file instead of from the terminal.
- This redirects the output of the echo command to a file called output.txt.

#### Syntax:
```sh
>>
```
#### Example: 
```sh
echo "More data" >> output.txt
```
#### Output: 
```sh
cat < input.txt
```
#### 2. **Sleep**
The `sleep` command pauses the execution of a script for a specified number of seconds. It's useful for creating delays.

#### Syntax:
```sh
sleep 5  # Sleep for 5 seconds
```
#### 3. **Exit**
The `exit` command is used to terminate the script. You can specify an exit status code to indicate success or failure.

#### Syntax:
```sh
exit 0  # Exit with a success code
exit 1  # Exit with an error code
```
#### 4. **Logger**
The `logger` command is used to add entries to the system log (Syslog).

#### Syntax:
```sh
logger "This is a log message"
```

#### 5. **/dev/null**
`/dev/null` is a special file that discards any data written to it. It's often used to suppress unwanted output.

#### Syntax:
```sh
echo "This will be discarded" > /dev/null
```


### Debugging Methods
Debugging helps identify and fix issues in shell scripts. Here are some methods:
#### 1. **Using set -x**
-   This enables debugging by printing each command before it’s executed.
```sh
set -x
echo "This will be debugged"
```
#### 2. **set +x**
-   This disables debugging.
```sh
set +x
```
#### 3. **Using trap**
-  The trap command can be used to catch signals and errors in the script and handle them.
```sh
trap 'echo "An error occurred!"' ERR
```
### Run Scripts in the Background
To run a script in the background, append an & to the command. This allows the script to run without blocking the terminal.
#### Syntax:
```sh
./script.sh &
```
#### Example: 
```sh
./long_running_script.sh &
```
- To view background jobs, use the jobs command. You can bring them to the foreground with fg.
### Crontab Usage
The `cron` service is used to run scheduled tasks at specific intervals. The crontab file contains the list of jobs to be executed and their schedule

#### View Crontab::
```sh
crontab -l  # List crontab
```
#### Edit Crontab:: 
```sh
crontab -e  # Edit crontab
```
#### Remove Crontab:: 
```sh
crontab -r  # Remove crontab
```
#### Syntax:
```sh
* * * * * /path/to/script.sh
| | | | |
| | | | +---- Day of the week (0-7, 0 and 7 are Sunday)
| | | +------ Month (1-12)
| | +-------- Day of the month (1-31)
| +---------- Hour (0-23)
+------------ Minute (0-59)
```
#### Example: 
-   Run a script every day at 2:00 AM:
```sh
0 2 * * * /home/user/script.sh
```
---
