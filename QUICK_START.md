# RDCM Unified Platform - Quick Start

## Get Your API Key (1 min)

1. Go to [console.anthropic.com](https://console.anthropic.com)
2. Sign up free
3. Copy your API key

## Test Locally (30 sec)

```bash
# In folder with all your files, run:
python -m http.server 8000

# Open in browser:
http://localhost:8000
```

Click "Launch Platform" → Go to Settings → Paste API key → Test

## Deploy to Netlify Free (5 min)

### Step 1: Push to GitHub
```bash
cd /your/folder
git init
git add .
git commit -m "RDCM Platform"
git remote add origin https://github.com/YOUR_USERNAME/rdcm-platform.git
git branch -M main
git push -u origin main
```

### Step 2: Connect to Netlify
1. Go to [netlify.com](https://netlify.com)
2. Click "Sign up with GitHub"
3. Click "New site from Git"
4. Select your repo
5. Click "Deploy"

### Done! ✅

Your live URL: `https://your-site-name.netlify.app`

Share it with anyone!

---

## What You Have

**🧠 AI Brain** - Trading bot with Claude AI decisions  
**📚 Tutor** - Lessons + voice + quizzes  
**🎙️ Voice Control** - Command your bots by speaking  
**💰 Monetization** - Freemium ready (3 free lessons/day)  
**💳 Payments** - Stripe integration (upgrade when ready)

---

## File Structure

```
index.html                    ← Landing page
rdcm-unified-platform.html    ← Main app (5-in-1)
ai-tutor-free.html           ← Tutor (included above)
ai-audio-automation.html     ← Voice bot (included above)
ai-brain-system.html         ← Trading (included above)
README.md                    ← Full docs
DEPLOYMENT.md                ← Details
netlify.toml                 ← Netlify config
```

---

## Next Steps

1. ✅ Get API key
2. ✅ Test locally
3. ✅ Deploy to Netlify
4. 🎯 Share link with friends
5. 📊 Collect feedback
6. 💰 Upgrade to paid tiers (when ready)

---

**That's it. You're live.** 🚀

Netlify free tier handles thousands of users. Scale up when you hit limits.
