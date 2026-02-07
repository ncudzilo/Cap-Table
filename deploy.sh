#!/bin/bash

# Reneu Cap Table - GitHub Pages Deployment Script
# This script helps you quickly deploy the cap table app to GitHub Pages

set -e  # Exit on error

echo "======================================"
echo "Reneu Cap Table Deployment Script"
echo "======================================"
echo ""

# Check if we're in a git repository
if [ ! -d .git ]; then
    echo "⚠️  This directory is not a git repository."
    echo ""
    read -p "Would you like to initialize a new git repository? (y/n): " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git init
        echo "✅ Git repository initialized"
    else
        echo "❌ Deployment cancelled. Please run this script in a git repository."
        exit 1
    fi
fi

# Check if origin remote exists
if git remote get-url origin &> /dev/null; then
    REMOTE_URL=$(git remote get-url origin)
    echo "📍 Current remote: $REMOTE_URL"
else
    echo "⚠️  No remote repository configured."
    echo ""
    read -p "Enter your GitHub repository URL (e.g., https://github.com/username/reneu-cap-table.git): " REPO_URL
    git remote add origin "$REPO_URL"
    echo "✅ Remote added: $REPO_URL"
fi

# Stage all files
echo ""
echo "📦 Staging files..."
git add .

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "✅ No changes to commit. Repository is up to date."
else
    # Commit changes
    echo ""
    read -p "Enter commit message (or press Enter for default): " COMMIT_MSG
    COMMIT_MSG=${COMMIT_MSG:-"Update cap table app"}
    
    git commit -m "$COMMIT_MSG"
    echo "✅ Changes committed"
fi

# Get current branch
CURRENT_BRANCH=$(git branch --show-current)
if [ -z "$CURRENT_BRANCH" ]; then
    CURRENT_BRANCH="main"
    git checkout -b main
    echo "✅ Created and switched to 'main' branch"
fi

# Push to GitHub
echo ""
read -p "Push to GitHub and deploy? (y/n): " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    git push -u origin "$CURRENT_BRANCH"
    echo "✅ Pushed to GitHub"
    echo ""
    echo "======================================"
    echo "🎉 Deployment initiated!"
    echo "======================================"
    echo ""
    echo "Next steps:"
    echo "1. Go to your GitHub repository"
    echo "2. Click 'Settings' > 'Pages'"
    echo "3. Under 'Source', select '$CURRENT_BRANCH' branch"
    echo "4. Click 'Save'"
    echo ""
    echo "Your app will be live at:"
    echo "https://YOUR_USERNAME.github.io/$(basename $(git remote get-url origin) .git)/"
    echo ""
else
    echo "❌ Deployment cancelled"
fi
