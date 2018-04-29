#!/bin/bash

echo -e "\033[0;32mDeployin updates to Github...\033[0m"

# Generate file static
hugo # if using a theme replace by 'hugo -t <yourtheme>'

# to public directory
cd public

# Git add
git add -A

# Create New a commit
msg="Rebuilding site `date`"
if [ $# -eq 1 ]
    then msg="$1"
fi
git commit -m "$msg"

# Push to Github
git push -u origin master

# Comeback to The Previous Direktory
cd ..
