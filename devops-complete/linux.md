# what is linux and comparing to windows?
-> Linux is an open-source, Unix-like operating system kernel created by Linus Torvalds. It is widely used in servers, desktops, and various embedded systems.
# What is the Linux kernel?
-> The kernel is the core part of the Linux operating system that manages system resources and hardware.

-> Windows: Windows operating system also known as Microsoft Windows is a GUI (Graphical User Interface) based system software or OS which is developed and marketed by Microsoft. It is licensed and its source code is not accessible to normal users. Windows operating system was developed for both home usage and professional or business usage.

# What are the basic components of a Linux system?
-> The basic components include the kernel, system libraries, system utilities, and application programs.

# How do you check the current kernel version?
-> hostnamectl,uname -r, cat /proc/version

# How do you monitor system processes?
-> Use the top or htop command.

# What is SSH and how is it used?
-> SSH (Secure Shell) is a protocol used to securely connect to a remote server. Use ssh username@hostname.

# What is the difference between su and sudo?
-> su switches the current user to another user, while sudo allows permitted users to execute commands as the superuser.

# Files and permissions:
1. cat -> Concatenates and displays file contents.
2. cp -> copying the contect source to destination location(cp -r <source><destination>)
3. mv -> moving or renaming the files or folders(mv <source><destination>)
4. ls -lrta -> listing files and directories
5. touch -> create normal files
6. mkdir -> creates directory
7. rm -rf name -> remove forcefully directory or files
8. chmod 777 filename -> permissions setup
9. chown -R user:user filename -> change the ownership for perticular file or folder

# disk management
1. df -Th -> This command shows how much space is used and available on all hard drives and partitions
2. du -sh * -c files/directories -> This command shows the space used by each file and folder in the current folder.
3. dd -> The dd command is a low-level tool for copying and converting raw data. It can be used for disk cloning, creating backups, or copying data from one device to another (e.g., copying a full disk or partition).(dd if=/dev/sda of=/dev/sdb bs=64K)

# service management
1. systemctl/service => start/status/stop/restart
2. Check logs for errors => Use journalctl -xe to view system logs.

# searching,finding more tools:
1. find ->  Used to search for files in a specific directory or across the system.
2. awk -> A text processing tool, used for pattern scanning and processing.
3. grep -> Searches for specific patterns in files inside files.
4. cut ->  Extracts specific parts of a line (like columns from a file).
5. sed -> Stream editor for modifying and transforming text in files.
6. head -> Displays the first 10 lines of a file.
7. tail -> plays the last 10 lines of a file.
8. less -> Allows viewing content of a file one screen at a time, with backward navigation.
9. more -> Similar to less, but only supports forward navigation.
10. cat -> Concatenates and displays file contents.
11. vi -> A text editor used for editing files in the terminal.

# process management
1. ps aux -> Displays information about all running processes on the system.
             It gives a one-time snapshot of all running processes.
             Doesn’t update in real-time.
2. top -> Displays a dynamic, real-time view of system processes, including CPU and memory usage.
           Displays a real-time, continuously updating list of processes.

3. htop -> A more user-friendly, interactive version of top, with color-coded output and additional features like scrolling and searching.


# networking management
1. ping -> Tests if a device (like a server or router) is reachable over the network. It sends a small packet and waits for a reply.
2. curl -> Used to send data to or get data from a server (like downloading a file or getting a webpage).
3. wget ->  Downloads files from the internet. It's like curl, but it saves the file to your computer.
4. ifconfig/ip -a/ip addr ->  Shows the network configuration, such as IP addresses, network interfaces, and other details about your network.
5. ip route -> Displays the routing table, showing how network packets are directed across networks.
6. route -> Similar to ip route, shows the routing table but older and less flexible.
7. netstat -tulpn ->Shows network connections, open ports, and listening services.
8. dig -x 9.9.9.9 -> A DNS lookup tool, especially for reverse lookups. It can resolve an IP address to a domain name.
9. nslookup -> Another tool for looking up DNS records, such as domain names to IP addresses.
10. whois dns_name ->  Provides detailed information about a domain name, like the owner, registration, and expiration dates.
11. host/hostname ->  Shows or sets the name of the device (host) on the network.
12. ss -tulpn -> Shows network sockets (similar to netstat), including information about connections and services running.
13. mtr -> A network diagnostic tool combining ping and traceroute to show real-time network performance.
14. traceroute/tracepath -> Traces the path of packets from your computer to a destination, showing each hop (router) along the way. Helps diagnose network delays.
15. scp : It copies files securely over SSH but does not optimize for large transfers. It transfers the entire file every time.
16. rsync => it is more efficient as it only copies the differences between source and destination, making it ideal for large files or repeated transfers.
17. iptables => iptables is a firewall tool used to configure and manage packet filtering rules on Linux systems(sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT)
18. telnet => Telnet can check if a particular port on a remote server is open and accessible.
# Key Comparison
- netstat -tulpn is network-specific, while lsof is file and process-focused.
- Use netstat for listening ports and active connections.
- Use lsof for tracking file locks, open files, or network usage by files.

# How would you identify which process is using port 8080?
-> "I would use the lsof -i :8080 command. This would display the process ID (PID), the user, and the command associated with the process using port 8080."

# checking installed packages in ubuntu:
1. it is a package management tool in dpkg (debian package systems) to install, build, remove, and manage .deb packages.
Explanation:
- dpkg -l lists all installed packages in the system.-> dpkg -l | grep docker
- apt list --installed shows all packages installed via apt. -> apt list --installed | grep docker
- which is useful to check if a particular executable is available on the system. -> which docker
2. dmesg(dignostics messages or debian messages) -> The dmesg command in Linux is used to display the kernel ring buffer messages
==> rpm(redhat),dpkg(debian systems like ubuntu)

# scenarios guide
1. what is differnece between df and du
-> df shows the overall disk space usage of filesystems.
-> du shows the disk space used by a specific directory or file.
2. how to find the filename by name in a system?
-> find / -name "<filename>"
3. Explain the difference between kill and killall commands.
-> kill terminates a process by PID (Process ID). -> kill -9 process_id
-> killall terminates processes by name. -> process
4. change permissions(4->read,2->write,1->execute)
first set -> rwx -> user
second set -> rwx -> group
third set -> rwx -> others
5. How would you check if a service is running in Linux?
-> systemctl status service_name
6. What is the difference between ps and top commands?
-> ps: Displays a snapshot of the current running processes.
-> top: Displays a real-time dynamic view of processes.
7. user management :
1. useradd -m -b /home/users -c "John Doe" -g developers -G admins -s /bin/bash johndoe
-m => home directory
-b => change the default users location
-c => characters
-g => groups
-s => shell
last username
2. passwd user_name => change password particualar user
3. usermod -aG <group1><group2><user_name>
-a => adds user to groups
-G => Groups
4. groupadd => create groups in linux(-g,-r,-o),PId,uniqueness
5. groupmod => modifies the group some options
6. passwd: Focuses on directly changing the password itself.
7. chage: Focuses on configuring password expiration settings and account locking features.(chage -l ubuntu)

--> files for user managemnet
1. sudoers ->  This file defines the users and groups that are allowed to use sudo to execute commands with elevated privileges (root access).
2. /etc/passwd -> This file contains essential information about each user on the system
3. /etc/shadow -> This file contains the encrypted passwords of users, along with information about password aging (like expiry, minimum password age, etc.).

# logs monitoring
1. tail /var/log/syslog: Displays the last 10 lines and exits.
2. tail -f /var/log/syslog: Displays the last 10 lines and keeps monitoring for new lines, updating the output in real-time.
3. crontab -e
4. What is the difference between rsync and cp?
- rsync: A powerful tool to copy files, with features like copying only changed files, preserving permissions, and handling remote copies.
- cp: Simple command for copying files without the advanced options provided by rsync.

5. How would you mount a USB drive in Linux?
- sudo mount /dev/sdb1 /mnt/usb
6. What is the difference between /bin and /sbin directories?
- /bin: Contains essential command binaries for all users (e.g., ls, cp).
- /sbin: Contains system binaries used by the system administrator (e.g., ifconfig, reboot).


# main commands:
1. sudo journalctl --vacuum-time=7d

# difference between grep and awk
-> grep: Finds and displays lines that match a pattern.
Example: grep "word" file.txt prints lines containing "word".

-> awk: Processes text, splits it into columns, and can perform actions (like printing specific columns or calculations).
Example: awk '{print $1}' file.txt prints the first column of each line.


=======================================================================================================

# shell scritping
1. # -> used for comments
2. $ -> indicates variables
3. & -> runs as a background
4. && -> Logical AND for chaining commands.
5. || -> Logical OR for chaining commands.
6. ; -> Separates multiple commands on the same line.
7. | -> Pipes output of one command as input to another.
8. > -> Redirects output to a file (overwrite).
9. >> -> Redirects output to a file (append).
10. < -> Redirects input from a file.(wc -l < sample.md)
11. * -> Wildcard for matching multiple characters.
12. ? -> Wildcard for matching a single character.
13. \ -> Escapes special characters.
14. ` -> Command substitution (backticks).
15. () -> Groups commands.
16. {} -> Groups commands or expands strings.
17. ! -> Negates conditions or matches.
18. $# -> Number of arguments passed to the script.
19. $@ -> All arguments passed to the script as separate strings.
20. $* -> All arguments passed to the script as a single string.
21. $$ -> The process ID (PID) of the current shell script
22. $? -> exit status of last command.
23. $_ -> The last argument of the previous command.

# conditionals
1. if elif else fi
2. for loop
3. while loop
4. until loop
