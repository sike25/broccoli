#!/bin/bash

# Define an array of messages
messages[0]="Sabi girl no dey too like talk"
messages[1]="Animals dey in human form"
messages[2]="Padi man, nobody like work"
messages[3]="But you must hustle if you wan chop"
messages[4]="E no finish, dem wan fight us"
messages[5]="If them dey run, dem no fit catch up"
messages[6]="I no dey form say I too righteous"
messages[7]="No come dey form say you too like us"
messages[8]="Ta-ta-ri-pa, ta-ta-ri, pa"

# Generate a random number to select a message from the array
randomNum=$(($RANDOM % ${#messages[@]}))

# Get the current date and time
currentTimestamp=$(date '+%B %d, %Y at %I:%M %p')

# Check if update.md exists, and create it if it doesn't
if [ ! -e "update.md" ]; then
    touch update.md
    git add update.md
fi

# Append text to update.md, indicating the last update time
echo "## 🤔 LAST UPDATED ON: ${currentTimestamp}" >update.md

# Configure local Git user information
git config --local user.email "oogieva25@amherst.edu"
git config --local user.name "sike25"

# Commit changes to the repository with a random message and the current timestamp
# git commit -am: commit all modified files and provide a commit message in a single command
# a (all): Automatically add all modified files in the working directory
# m (message): Specify the commit message that describes the purpose of the commit
git commit -am "${messages[$randomNum]} on ${currentTimestamp}"
