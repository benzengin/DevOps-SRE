## Why Shell Scripting  
### Bash shell scripts
***-Execute bash commands from a file  
-Automate sequences of shell commands  
-Run them later or at scheduled times  
-Take advantage of UNIX toolset***  

### Who needs it?   
***-System administrators  
-Developers  
-Power users***

### Bash scripts are very good at:  
***-File manipulation  
-Running programs  
-Processing text***  

## Sometimes other languages are better  

### A few shell sectors are:  
***-I/O  
-Variables  
-Conditional execution (if, then, else, case)
-Loops
-Arithmetic
-String manipulation
-Handling script arguments
-Shell functions***  



# Working with Special Characters
## Common speical Characters Used in Bash

**" " or ' '**  - Denotes whicespace. Single quotes preserve literal meaning; double quotes allow substitutions.  

**$**  - Denotes an expansion (for use with variables, command substitution, arithmetic substitution, etc.)  

**\**  - Escape character. Used to remove "specialness" from a special character.  

**#** - Comments. Anything after this character isn't interpereted.  

**=** - Assignment  

**[] or [[]]** - Test; evaluates for either true or false  

**!** - Negation  

**>>, >, <** - Input/output redirection  

**|** - Pipe. Sends the output of one command to the input of another.  

**(*) or ?** - Globs (aka, wildscards). ? is a wildcard for a single character.  

## Implementing and/or Lists  

**And Lists**  
A string of commands where the next command is only executed if the previous command exited with a status of zero (True!).  

**Or Lists**  
A string of commands where the next command is only executed if the previous command exited with a non-zero status (False!).  

## Exit Statuses  

**Zero Exit Status:**  
Implies the script or program ran to comletion and everything is fine.  

**Non-Zero Exit Status:**  
Results can vary based on the script or program that generated the exit status.  

## Variables  

### What Do Variables Look Like and How Do We Use Them?  

***Important!  
Bash variables do not have data types.  
All Bash variables start with $ (dollar sign) when being referenced.  
When setting a variable, do not preface it with $.***  

***Examples:  
SHELL=/bin/bash  
LANG=en_US.UTF-8  
MAIL=/var/spool/mail/a_user***  

### An introduction into Bash Functions  

**What Is a Bash Function?**  
Simply put, a function in Bash (or pretty much any programming language)  
is used to group code in a logical way.  




