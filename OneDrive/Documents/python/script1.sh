#!/bin/bash
while true; do
    echo "======MENU========"
    echo "1.To generate ssh-key and see the content of the key"
    echo "2. Git Clone - Clone from Azure DevOps to Local repository"
    echo "3. Git status"
    echo "4. Exit"
    read -p "Enter Your choice[1-6]:" choice
    case $choice in
        1)  
          # Generate SSH key
          ssh-keygen -t rsa -f "$HOME/.ssh/id_rsa" -N ""

          # List files
          ls -l "$HOME/.ssh"

          # Print public key
          echo "Checking if public key exists..."
          if [[ -f "$HOME/.ssh/id_rsa.pub" ]]; then
             echo "Found public key:"
             cat "$HOME/.ssh/id_rsa.pub"
          else
             echo "Public key not found at $HOME/.ssh/id_rsa.pub"
          fi 
        ;;
        2)
        read -p "Repo_URL: " REPO_URL
        read -p "Clone_URL: " CLONE_DIR

        # Create parent directory if it doesn't exist
        mkdir -p "$(dirname "$CLONE_DIR")"

        # Check if the directory already exists
        if [ -d "$CLONE_DIR" ]; then
            echo "Directory $CLONE_DIR already exists. Skipping clone."
        else
            echo "Cloning $REPO_URL into $CLONE_DIR..."
            git clone "$REPO_URL" "$CLONE_DIR"
        fi
        ;;
        3) 
          cd "C:\Users\hpyad\OneDrive\Documents\python\repository"
          git status
        ;;
        4)
            break
        ;;
    esac
done