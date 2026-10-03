# Deploy in 5 Minutes ⚡

## What You're About to Do

Push code to GitHub → GitHub Actions auto-deploys to Netlify → Live! 🚀

---

## Step 1: Create GitHub Repo

```bash
# You'll need a GitHub account at github.com

# Then come back here and run:
gh repo create rdcm-platform --public --source=. --remote=origin --push
```

This creates a public repo and pushes all files automatically.

---

## Step 2: Get Netlify Tokens (2 min)

1. Go to [netlify.com](https://netlify.com)
2. Sign up (free) - use GitHub login for faster setup
3. Go to Account Settings → Applications → Personal access tokens
4. Create new token → Copy it
5. Go to GitHub repo Settings → Secrets → New secret
6. Name: `NETLIFY_AUTH_TOKEN`
7. Paste token → Save

---

## Step 3: Get Netlify Site ID (1 min)

1. In Netlify dashboard → Sites → Create new site
2. Choose "Connect to Git" 
3. Select your `rdcm-platform` repo
4. Click Deploy
5. Go to Site Settings → General
6. Copy "Site ID"
7. Go back to GitHub repo Settings → Secrets → New secret
8. Name: `NETLIFY_SITE_ID`
9. Paste ID → Save

---

## Step 4: Deploy (30 sec)

Now that GitHub has the secrets, just push:

```bash
git add .
git commit -m "Deploy to Netlify"
git push
```

GitHub Actions automatically deploys to Netlify!

---

## That's It! ✅

Your site is live at:
```
https://[site-name].netlify.app
```

Every time you push → auto-deploys

---

## If You Want Even Faster...

Just go to [netlify.com](https://netlify.com) and:
1. Click "New site from Git"
2. Select your GitHub repo
3. Click "Deploy site"

No secrets needed - Netlify handles it. Same result, even simpler.

---

**Now go deploy!** 🚀
