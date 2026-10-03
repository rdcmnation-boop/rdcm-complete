# 🚀 Deploy to Netlify - 3 Steps (5 minutes)

## Step 1: Create GitHub Repo (1 min)

1. Go to [github.com/new](https://github.com/new)
2. Name it: `rdcm-unified-platform`
3. Keep it **PUBLIC**
4. Click "Create repository"

## Step 2: Push Your Code (2 mins)

Copy your new repo URL (looks like: `https://github.com/YOUR_USERNAME/rdcm-unified-platform.git`)

Then run:
```bash
cd /path/to/your/rdcm-files-folder
git remote add origin https://github.com/YOUR_USERNAME/rdcm-unified-platform.git
git branch -M main
git push -u origin main
```

## Step 3: Connect to Netlify (2 mins)

1. Go to [netlify.com](https://netlify.com)
2. Click "Sign up" → Choose "GitHub"
3. Authorize Netlify to access GitHub
4. Click "New site from Git"
5. Select your `rdcm-unified-platform` repo
6. Click "Deploy site"

## ✅ DONE! 

Your site is now live! Netlify gives you a URL like:
```
https://random-name-12345.netlify.app
```

## 🎯 What Happens Next

- Every time you push code to GitHub → Netlify auto-deploys
- Your site updates live in <1 minute
- You get a free `.netlify.app` domain
- Free SSL/HTTPS included
- No credit card needed

## 📝 Custom Domain (Optional)

Once it's working:
1. Go to Netlify site Settings
2. Domain management → Add custom domain
3. Point your DNS to Netlify
4. Takes ~30 mins to activate

## 🔐 Security Note

Your Claude API key is stored in browser localStorage. This is fine for:
- Demo/free tier
- Initial user testing
- Proof of concept

For production with real money, you'd add a backend proxy to hide your actual API keys.

## 💬 Questions?

- Netlify Docs: https://docs.netlify.com
- GitHub Help: https://docs.github.com
- This project's README.md has all API integration details

---

**You're about to go live! 🎉**

Share your Netlify URL with friends and start collecting users!
