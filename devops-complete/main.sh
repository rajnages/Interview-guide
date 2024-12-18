#!/bin/bash
# A shell script to demonstrate special characters usage

# 1. # -> This is a comment.
echo "# This is a comment."

# 2. $ -> Used to reference variables.
my_var="Shell Scripting"
echo "The value of my_var is: $my_var"

# 3. & -> Runs a command in the background.
sleep 5 &  # This will run the sleep command in the background.
echo "Sleep process is running in the background."

# 4. && -> Logical AND chaining.
echo "This will execute" && echo "only if the previous command succeeds."

# 5. || -> Logical OR chaining.
false || echo "This will execute because the previous command failed."

# 6. ; -> Separate commands on the same line.
echo "First command"; echo "Second command on the same line."

# 7. | -> Pipes output from one command to another.
echo "Piping example" | tr 'a-z' 'A-Z'

# 8. > -> Redirect output to a file (overwrite).
echo "Overwriting file content" > output.txt

# 9. >> -> Redirect output to a file (append).
echo "Appending content to the file" >> output.txt

# 10. < -> Redirect input from a file.
wc -l < output.txt

# 11. * -> Wildcard for matching multiple characters.
echo "Files in the current directory:"
ls *

# 12. ? -> Wildcard for matching a single character.
echo "Matching files with one character difference:"
ls ?.sh

# 13. \ -> Escapes special characters.
echo "Printing \$HOME using escape character."

# 14. ` -> Command substitution (backticks).
current_date=`date`
echo "Current date using backticks: $current_date"

# 15. () -> Grouping commands.
(echo "Grouped command 1"; echo "Grouped command 2")

# 16. {} -> Grouping commands or expanding strings.
echo "Grouped with curly braces: "
{ echo "Line 1"; echo "Line 2"; }

# 17. ! -> Negates conditions or matches.
[ ! -f "nonexistent_file" ] && echo "File does not exist."

# 18. $# -> Number of arguments passed to the script.
echo "Number of arguments passed: $#"

# 19. $@ -> All arguments passed as separate strings.
echo "Arguments as separate strings: $@"

# 20. $* -> All arguments passed as a single string.
echo "Arguments as a single string: $*"

# 21. $$ -> The process ID (PID) of the current shell.
echo "Process ID of the current shell: $$"

# 22. $? -> Exit status of the last command.
ls nonexistent_file 2>/dev/null
echo "Exit status of the last command: $?"

# 23. $_ -> The last argument of the previous command.
echo "Last argument of the previous command: $_"
