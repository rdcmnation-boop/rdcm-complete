#!/bin/bash

# RDCM Complete - One-Command Deploy Script
# Run this once and follow the prompts

echo "🚀 RDCM Complete Deployment"
echo "============================"
echo ""
echo "This script will:"
echo "1. Initialize git"
echo "2. Commit all files"
echo "3. Create GitHub repo"
echo "4. Push to GitHub"
echo "5. Give you the URL to deploy on Netlify"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git not found. Install from https://git-scm.com"
    exit 1
fi

# Initialize git
echo "Step 1: Initializing git..."
git init
git config user.email "rdcm@example.com"
git config user.name "RDCM User"
git add .
git commit -m "RDCM Complete Platform - Production Ready"

echo "✓ Git initialized and committed"
echo ""

# GitHub setup
echo "Step 2: Create GitHub repository"
echo "=================================="
echo ""
echo "1. Go to https://github.com/new"
echo "2. Repository name: rdcm-complete"
echo "3. Description: RDCM - AI Platform (Trading, Tutor, Voice)"
echo "4. Choose: PUBLIC"
echo "5. Click: Create Repository"
echo ""
read -p "Press Enter once you've created the repo on GitHub..."
echo ""

# Get GitHub URL
read -p "Paste your GitHub repo HTTPS URL (https://github.com/...): " GITHUB_URL

# Push to GitHub
echo ""
echo "Step 3: Pushing to GitHub..."
git remote add origin "$GITHUB_URL"
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo "✓ Pushed to GitHub successfully"
else
    echo "❌ Failed to push. Check your GitHub URL and try again."
    exit 1
fi

echo ""
echo "============================"
echo "✅ ALMOST THERE!"
echo "============================"
echo ""
echo "Your code is now on GitHub!"
echo ""
echo "FINAL STEP: Deploy to Netlify"
echo "=============================="
echo ""
echo "1. Go to https://netlify.com"
echo "2. Sign up (use GitHub login for easiest setup)"
echo "3. Click: 'New site from Git'"
echo "4. Select: Your 'rdcm-complete' repository"
echo "5. Click: 'Deploy site'"
echo "6. Wait 30 seconds..."
echo "7. Get your LIVE URL! 🎉"
echo ""
echo "Your GitHub repo is here:"
echo "  $GITHUB_URL"
echo ""
echo "You're now live! Share your URL!"
echo ""
