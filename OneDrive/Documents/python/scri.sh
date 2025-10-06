#!/bin/bash
while true; do
    echo "======MENU========"
    echo "1.To generate ssh-key and see the content of the key"
    echo "2. Git Clone - Clone from Azure DevOps to Local repository"
    echo "3. Edit the make file with vi editor"
    echo "4. Git Status"
    echo "5. gmake clean and compile" - gmake compile
    echo "6. make clean and compile" - make compile
    echo "7. Exit"
    read -p "Enter Your choice[1-7]:" choice
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
          read -p "Make File:" make_file_name
          vi make_file_name
        ;;
        4)
           git status
        ;;

        5) 
            read -p "Make File:Gmake Compile" make_file_name
            gmake -f "$make_file_name" && gmake -f "$make_file_name"
        ;;

        6) 
            read -p "Make File Make Compile: " make_file_name
            make -f "$make_file_name" && make -f "$make_file_name"
        ;;
        7)
            read -p "provide your commit message " message      
            git add . && git commit -m "$message" && git push
        ;;
        8)
            break
        ;;
    esac
done