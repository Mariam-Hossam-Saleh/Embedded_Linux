#!/bin/bash

# Prompt user for username, and group
read -p "Enter the username: " USERNAME
read -p "Enter the group name: " GROUPNAME

# Function to check if a user exists
check_user() {
    if id "$USERNAME" > /dev/null 2>&1; then           #redirecting the standard output & the standard error of the getent command to /dev/null.
        echo "User '$USERNAME' already exists."
    else
        echo "User '$USERNAME' Creating User..."
        useradd  "$USERNAME"
        if [ $? -eq 0 ]; then        #This variable ($?) holds the exit status of the last executed command in the shell. Exit status 0 indicates success, while any non-zero value indicates an error or failure.
            echo "User '$USERNAME' created successfully."
        else
            echo "Failed to create user '$USERNAME'."
            exit 1
        fi
    fi
}

# Function to check if a group exists
check_group() {
    if getent group "$GROUPNAME" > /dev/null 2>&1; then   
        echo "Group '$GROUPNAME' already exists."
    else
        echo "Group '$GROUPNAME' Creating Group..."
        groupadd "$GROUPNAME"
	if [ $? -eq 0 ]; then    
            echo "Group '$GROUPNAME' created successfully."
        else
            echo "Failed to create group '$GROUPNAME'."
            exit 1
        fi
    fi
}

# Function to add the user to the group
add_user_to_group() {
    usermod -aG "$GROUPNAME" "$USERNAME"
    if [ $? -eq 0 ]; then
        echo "User '$USERNAME' added to group '$GROUPNAME' successfully."
    else
        echo "Failed to add user '$USERNAME' to group '$GROUPNAME'."
        exit 1
    fi
}

# Function to display user and group information
show_info() {
    echo "=== User Information ==="
    id "$USERNAME"

    echo "=== Group Information ==="
    getent group "$GROUPNAME"
}

# Main logic
check_user
check_group
add_user_to_group
show_info

