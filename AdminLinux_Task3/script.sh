#!/bin/bash

# Define the .bashrc file path
BASHRC_FILE="$HOME/.bashrc"

# Check if .bashrc exists
if [ -f "$BASHRC_FILE" ]; then
    echo ".bashrc file exists."
  
    # Append environment variable HELLO with the value of HOSTNAME
    echo "export HELLO=\$HOSTNAME" >> "$BASHRC_FILE"
    
    # Append a local variable LOCAL with the output of whoami
    echo "LOCAL=\$(whoami)" >> "$BASHRC_FILE"
    
    echo "New variables appended to $BASHRC_FILE."
else
    echo ".bashrc file does not exist in the home directory."
fi

# open new terminal for wsl
cmd.exe /c start wsl

