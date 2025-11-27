#!/bin/bash

    read -p "Enter repository name : " repo
    if [ -z "$repo" ]; then
        echo "Please provide repository name otherwise not repository exist or create"
        exit 1
    fi
        repo_name=$(basename $repo .git)
    if [ -d "$repo_name" ]; then
        echo "the {"$repo"} repositroy name ("$repo_name") already exist "
    else
        echo "if not exist this repository then cloning ($repo_name)"
        git clone "$repo" || {
        echo "Failed to clone repository."
        exit 1
        }
        echo "Repository cloned successfully ($repo_name)"
    
    fi
