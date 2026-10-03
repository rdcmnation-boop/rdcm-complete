# RDCM Unified Platform - Deployment Guide

Quick start guide to deploy your AI platform live in minutes.

## 🚀 Fastest Option: Vercel (Recommended)

### Steps:
1. **Create Vercel Account**
   - Go to [vercel.com](https://vercel.com)
   - Sign up with GitHub, GitLab, or email

2. **Option A: Import from GitHub**
   - Push this repo to GitHub first
   - In Vercel dashboard: "Add New Project"
   - Select your GitHub repo
   - Click "Deploy"
   - ✅ Live in <1 minute!

3. **Option B: Direct Upload**
   - Download Vercel CLI: `npm i -g vercel`
   - In project folder: `vercel --prod`
   - Follow prompts
   - ✅ Live immediately!

### Cost:
- **Free Tier:** 100GB/month bandwidth, unlimited projects
- **Pro:** $20/month (unlimited everything)

---

## 🌐 Netlify Alternative

### Steps:
1. **Create Netlify Account**
   - Go to [netlify.com](https://netlify.com)
   - Sign up with GitHub or email

2. **Deploy with Drag & Drop**
   - In Netlify dashboard: "Add New Site"
   - Drag and drop your project folder
   - ✅ Live in <30 seconds!

3. **Or Use CLI**
   - Install: `npm i -g netlify-cli`
   - Run: `netlify deploy --prod`

### Cost:
- **Free Tier:** 300 build minutes/month
- **Pro:** $19/month

---

## 🔧 Local Testing First

### Before Deploying:

1. **Python (Easy)**
   ```bash
   python -m http.server 8000
   # Visit http://localhost:8000
   ```

2. **npm (Alternative)**
   ```bash
   npx http-server
   # Visit http://localhost:8080
   ```

3. **Test All Features**
   - ✅ Open index.html (landing page loads)
   - ✅ Click "Launch Platform" button
   - ✅ Try entering dummy Claude API key
   - ✅ Test microphone button (for voice)
   - ✅ Try generating a lesson

---

## 📋 Pre-Deployment Checklist

- [ ] All 4 HTML files ready (index.html, rdcm-unified-platform.html, ai-tutor-free.html, ai-audio-automation.html, ai-brain-system.html)
- [ ] README.md included
- [ ] vercel.json or netlify.toml configured
- [ ] package.json updated with correct homepage URL
- [ ] Tested locally (works in browser)
- [ ] No console errors (open DevTools: F12)
- [ ] Landing page loads quickly (<2 seconds)

---

## 🌍 Post-Deployment Setup

### 1. Custom Domain (Optional)
**Vercel:**
- In project settings: "Domains"
- Add your domain (e.g., rdcm.com)
- Update DNS records (shown in Vercel)

**Netlify:**
- Same: "Domain Settings"
- Follow DNS setup wizard

### 2. Share Live URL
- Get your deployment URL from Vercel/Netlify
- Share with early users
- Collect feedback

### 3. Monitor Performance
**Vercel Dashboard:**
- Deployments tab → see all versions
- Analytics tab → view traffic
- Settings → customize cache rules

**Netlify Dashboard:**
- Deploys tab → rollback if needed
- Analytics → traffic insights
- Status → uptime monitoring

---

## 🔐 Environment Variables (Optional)

If you move API calls to a server (advanced):

**Vercel:**
1. Project Settings → Environment Variables
2. Add: `CLAUDE_API_KEY=sk-ant-...`
3. Add: `ELEVENLABS_API_KEY=...`
4. Redeploy

**Netlify:**
1. Site Settings → Build & Deploy → Environment
2. Same process

**Note:** Currently API keys are stored in browser localStorage. This is actually fine for a demo/freemium model. For production with real money, move to server-side proxy.

---

## 📊 Traffic Expectations

### Free Tier Limits:
- **Vercel:** 100GB/month (handles ~50k visits with ~2MB per visit)
- **Netlify:** 300 build minutes (only matters if you rebuild often)

### At Scale:
- If you hit limits, upgrade plan
- Both have auto-scale on paid plans
- No downtime during upgrades

---

## 🐛 Troubleshooting Deployment

### "Page won't load"
- Clear browser cache (Ctrl+Shift+Delete)
- Try incognito window
- Check browser console (F12 → Console)

### "JavaScript not working"
- Ensure all 4 HTML files uploaded
- Check file names match exactly (case-sensitive)
- Verify links in index.html point to correct file names

### "API calls fail"
- This is normal! You haven't added your Claude API key yet
- Click Settings tab → add your key
- Generate a test lesson to verify

### "Microphone doesn't work"
- Must be HTTPS (Vercel/Netlify handle this automatically)
- Grant browser microphone permission (look for popup)
- Works best in Chrome/Edge/Firefox

### "Deploy fails"
- Check netlify.toml or vercel.json syntax (use JSON validator)
- Ensure all files are in same directory
- No hidden files causing issues

---

## 🎯 Next Steps After Deployment

### For Testing:
1. Share URL with 10 friends
2. Ask for feedback on:
   - Speed
   - Navigation clarity
   - Feature usefulness
3. Log issues in GitHub

### For Growth:
1. Set up analytics (Vercel or Netlify built-in)
2. Create social media post with your live link
3. Build landing page email signup
4. Start collecting beta users

### For Monetization:
1. Test Stripe checkout in Settings tab
2. Set up real Stripe account (currently uses test mode)
3. Implement subscription tiers
4. Track conversion rates

---

## 💡 Advanced Tips

### Custom Error Page
**vercel.json:**
```json
{
  "errorPages": {
    "404": "/404.html",
    "500": "/500.html"
  }
}
```

### Redirect Rules
**netlify.toml:**
```toml
[[redirects]]
  from = "/app"
  to = "/rdcm-unified-platform.html"
  status = 200
```

### Performance Optimization
- Vercel: Enable Web Analytics in Project Settings
- Netlify: Site Settings → Analytics
- Monitor Core Web Vitals

### CI/CD (Auto-deploy on push)
Both Vercel and Netlify auto-deploy when you push to GitHub. Just push your code and it's live!

---

## 📞 Support

- **Vercel Help:** https://vercel.com/support
- **Netlify Help:** https://docs.netlify.com
- **GitHub Issues:** Create in your repo

---

## 🎉 You're Live!

Your RDCM Unified Platform is now live on the internet! 

Next: Share the URL, collect feedback, iterate, and scale! 🚀
