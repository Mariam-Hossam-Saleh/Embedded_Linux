<!--  -->
# Linux day3 Questions: <img src="logo-linux.png" alt="Custom Icon" width="60" height="70" align="center"/>


## 📜Table of Questions :

- [1. The bash script](#bash-script-)
- [2. Section 2](#section-2-)
   - [1. List the user commands and redirect the output to /tmp/commands.list](#list-the-user-commands-and-redirect-the-output-to-tmpcommandslist-)
   - [2. Edit in your profile to display date at login and change your prompt permanently](#edit-in-your-profile-to-display-date-at-login-and-change-your-prompt-permanently-)
   - [3. What is the command to count the word in a file or number of files in a directory](#what-is-the-command-to-count-the-word-in-a-file-or-number-of-files-in-a-directory-)
   - [4. What happens if you execute](#a-cat-filename1--cat-filename2)
      - [a. cat filename1 | cat filename2](#a-cat-filename1--cat-filename2)
      - [b. ls | rm](#b-ls--rm)
      - [c. ls /etc/passwd | wc –l](#c-ls-etcpasswd--wc--l)
   - [5. Write a command to search for all files on the system whose name is ".profile"](#write-a-command-to-search-for-all-files-on-the-system-whose-name-is-profile)
   - [6. List the inode numbers of /, /etc, /etc/hosts](#list-the-inode-numbers-of--etc-etchosts)
   - [7. Create a symbolic link of /etc/passwd in /boot](#create-a-symbolic-link-of-etcpasswd-in-boot-)
   - [8. Create a hard link of /etc/passwd in /boot. Could you? Why?](#create-a-hard-link-of-etcpasswd-in-boot-could-you-why)
   - [9. Echo \ it will jump to the next line, and will print > Notice the prompt ”>” what is that? and how can you change it from “>” to “:”](#echo--it-will-jump-to-the-next-line-and-will-print--notice-the-prompt--what-is-that-and-how-can-you-change-it-from--to-)

###  bash script :
Write a Bash script that checks if the **.bashrc** file exists in the user's home 
directory. If it does, append new environment variables to the file: one called 
**HELLO** with the value of **HOSTNAME**, and another local variable called **LOCAL** 
with the value of the **whoami** command.
##### The bash script :
 ![image1](screen1.png)
##### Running of the bash script :
 ![image2](screen2.png)
 ![image3](screen3.png)
 
<!--<img src="screen1.png" alt="image6" width="600" height="580"> -->
### Section 2 :
#### List the user commands and redirect the output to /tmp/commands.list :
 ![image4](screen4.png)
#### Edit in your profile to display date at login and change your prompt permanently :
 ![image5](screen5.png)
 ![image6](screen6.png)
#### What is the command to count the word in a file or number of files in a directory :
the command to count the wword in a file is wc
wc - print newline, word, and byte counts for each file

#####  Count the number of user commands :
 ![image7](screen7.png)
### What happens if you execute : 
##### a. cat filename1 | cat filename2
The **piping** operation (|) takes the **output** from the command on its left (cat file1) and sends it as **input** to the command on its right (cat file2).
but here the cat command takes its input from file2 and **ignores** the input from the piping operation, it simply displays the contents of file2.
 ![image8](screen8.png)
##### b. ls | rm
The rm command does not support piping, it operates directly on file or directory names passed as arguments.
It does not have an option to read file names from standard input or a piped stream.
 ![image9](screen9.png)
##### c. ls /etc/passwd | wc -l
ls /etc/passwd: Lists the file /etc/passwd, since /etc/passwd is a single file, ls will output its name (passwd).
The pipe takes the output of ls /etc/passwd and passes it to the next command (wc -l).
wc -l: Counts the number of lines in the input it receives.
 ![image10](screen10.png)
### Write a command to search for all files on the system whose name is .profile
```bash
sudo find / -type f -name ".profile"
```
sudo: for permissions to search system-wide.
find /: Starts the search from the root directory (/) to search the entire system.
-type f: Specifies that the search is for regular files (not directories).
-name ".profile": Searches for files with the exact name .profile.
 ![image11](screen11.png)
### List the inode numbers of /, /etc, /etc/hosts
 ![image12](screen12.png)

### Create a symbolic link of /etc/passwd in /boot :
 ![image13](screen13.png)
### Create a hard link of /etc/passwd in /boot could you? why?
 ![image1](screen14.png)
### Echo \ it will jump to the next line, and will8 print > Notice the prompt ”>” what is that? and how can you change it from “>” to “:”.
The > is the default **secondary prompt** **(PS2)** in bash shell, it appears when the shell expects more input after a command is not complete.
We can change the secondary prompt from **>** to **:** by modifying the PS2 environment variable in the .bashrc file so that the change is permanent.

 ![image15](screen15.png) 
 ![image16](screen16.png) 

 ---

 _**Author**_

_**Mariam Hossam**_

_**ITI student**_