**Bash scripts are simple text file containing a series of commands we want to automate running rather than running them.**
**We need to remember to set the execute bit on a file before we try to run the script, and that the script should start with a "shebang".**

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



