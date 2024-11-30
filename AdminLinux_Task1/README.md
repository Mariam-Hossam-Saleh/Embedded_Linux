<!--  -->
# Linux day1 Questions: <img src="logo-linux.png" alt="Custom Icon" width="60" height="70" align="center"/>

<!-- Images-->
![image1](screen1.png)


## 📜Table of Questions :

- [1. List three Linux Distributions ](#linux-distributions-)
- [2. From the slides what is the man command used for?](#man-command-)
- [3. What is the difference between rm and rmdir using man command?](#what-is-the-difference-between-rm-and-rmdir-using-man-command)
- [4. Create the following hierarchy under your home directory:](#create-the-following-hierarchy-under-your-home-directory)
- [5. Copy the /etc/passwd file to your home directory making its name is mypasswd](#copy-the-etcpasswd-file-to-your-home-directory-making-its-name-is-mypasswd)
- [6. Rename this new file to be oldpasswd ](#rename-this-new-file-to-be-oldpasswd)
- [7. You are in /usr/bin, list four ways to go to your home directory](#you-are-in-usrbin-list-four-ways-to-go-to-your-home-directory)
- [8. List Linux commands in /usr/bin that start with letter w ](#list-linux-commands-in-usrbin-that-start-with-letter-w)
- [9. What command type are used for? (from the slide) ](#what-command-type-are-used-for)
- [10. Show 2 types of command file in /usr/bin that start with letter c](#show-2-types-of-command-file-in-usrbin-that-start-with-letter-c)
- [11. Using man command find the command to read file. (Note: man take option) ](#using-man-command-find-the-command-to-read-file)
- [12. What is the usage of apropos command? ](#what-is-the-usage-of-apropos-command)
- [ The bash script ](#bash-script-)
##  Linux Distributions :

### 1.  Arch Linux   <img src="arch.png" alt="Custom Icon" width="70" height="50" align="center"/>


- Minimalistic and highly customizable.
- Requires more technical knowledge to set up and maintain.
- Great for users who want complete control over their system.

### 2. Ubuntu <img src="ubuntu.png" alt="Custom Icon" width="60" height="60" align="center"/>


- User-friendly and widely used.
- Great for beginners and general-purpose use.
- Based on Debian.


### 3. Linux Mint <img src="Linux_Mint.png" alt="Custom Icon" width="55" height="55" align="center"/>


- Designed to be user-friendly, especially for beginners.
- Offers a familiar desktop experience for Windows users.
- Based on Ubuntu or Debian.

## man Command :
 man command is system-wide documentation system that provides short reference manuals (pages) for individual
 commands,API functions, concepts, configuration file syntax, file formats and is organized in sections
 (1 for user commands, 2 for system calls...). That's the traditional Unix documentation system.

## What is the difference between rm and rmdir using man command?
rm command
![image6](screen6.png)
rmdir command
![image7](screen7.png)

## Create the following hierarchy under your home directory:
![image2](screen2.png)

We can't remove the folder dir11 using **rmdir** because it is not empty
Instead we can remove it using **rm -r** as it removes the files contained in the directory recursivly.
![image13](screen13.png)
## Copy the /etc/passwd file to your home directory making its name is mypasswd
![image3](screen3.png)
The relative path for the file mycv 
![image15](screen14.png)
## Rename this new file to be oldpasswd
![image4](screen4.png)

## You are in /usr/bin, list four ways to go to your home directory
![image5](screen5.png)

## List Linux commands in /usr/bin that start with letter w 
![image8](screen8.png)

## What command type are used for?
![image9](screen9.png)

## Show 2 types of command file in /usr/bin that start with letter c
![image10](screen10.png)

## Using man command find the command to read file
![image11](screen11.png)

## What is the usage of apropos command? 
![image12](screen12.png)

## Bash Script :
![image14](bash.png)

## Bash Script Output :
![image15](bash-script-output.png)
