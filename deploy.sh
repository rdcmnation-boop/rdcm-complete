#!/bin/bash

# RDCM Platform - Auto Deploy to Netlify
# Copy and paste the commands below into your terminal

echo "🚀 RDCM Platform Deploy Script"
echo "================================"

# Step 1: Create GitHub repo
echo ""
echo "Step 1: Create GitHub repo"
echo "Run this command:"
echo ""
echo "  gh repo create rdcm-platform --public --source=. --remote=origin --push"
echo ""
echo "If gh isn't installed:"
echo "  1. Go to github.com/new"
echo "  2. Create repo 'rdcm-platform'"
echo "  3. Then run these commands:"
echo ""
echo "  git remote add origin https://github.com/YOUR_USERNAME/rdcm-platform.git"
echo "  git branch -M main"
echo "  git push -u origin main"
echo ""

# Step 2: Connect to Netlify
echo "Step 2: Go to netlify.com → Sign up (free)"
echo "  - Click 'New site from Git'"
echo "  - Select your rdcm-platform repo"
echo "  - Click 'Deploy'"
echo ""
echo "That's it! Your site goes live automatically! 🎉"
echo ""
echo "Your live URL will be: https://[auto-generated-name].netlify.app"
echo ""
