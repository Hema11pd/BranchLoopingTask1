REPO_URL="https://github.com/Hema11pd/mongodbque"
CLONE_DIR="C:\Users\hpyad\OneDrive\Documents\python\gitrepo"

# Create parent directory if it doesn't exist
mkdir -p "$(dirname "$CLONE_DIR")"

# Check if the directory already exists
if [ -d "$CLONE_DIR" ]; then
    echo "Directory $CLONE_DIR already exists. Skipping clone."
else
    echo "Cloning $REPO_URL into $CLONE_DIR..."
    git clone "$REPO_URL" "$CLONE_DIR"
fi