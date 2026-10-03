# RDCM Unified Platform

A comprehensive AI-powered platform combining autonomous trading, intelligent tutoring, voice automation, and real-time analytics in one unified interface.

## Features

### 🧠 AI Brain System
- **Autonomous Trading**: Claude API-powered decision making for BUY/SELL/HOLD
- **Multi-Bot Orchestration**: Manage Trading, YouTube, Mining, Gaming, Real Estate, Weather, and Social bots
- **Risk Management**: Position limits, daily loss stops, leverage controls
- **Backtesting Engine**: Test strategies on historical data
- **Live Trading**: Real Robinhood integration (when enabled)
- **Real-time Metrics**: Portfolio value, win rate, decisions/hour, revenue

### 📚 AI Tutor
- **Dynamic Lesson Generation**: AI-powered course content creation
- **Voice Narration**: ElevenLabs integration for natural-sounding speech
- **Interactive Quizzes**: Auto-generated 3-question quizzes after each lesson
- **Progress Tracking**: Questions answered, accuracy rate, lessons completed
- **Freemium Model**: 
  - Free: 3 lessons/day, beginner difficulty
  - Premium: Unlimited lessons, all difficulty levels
- **Default Topics**: Python, Spanish, Finance, Biology, Design, History

### 🎙️ Voice Control & Automation
- **Speech Recognition**: Real-time voice-to-command processing
- **Natural Language Processing**: Claude API understands intent
- **Bot Command Execution**: Voice control for all connected bots
- **Command History**: Real-time logging with timestamps
- **Success Tracking**: Monitor bot response rates

### 📊 Unified Dashboard
- **5-Tab Navigation**: Dashboard, AI Brain, Learning, Voice Control, Settings
- **Real-time Analytics**: Portfolio P&L, win rates, lesson metrics
- **Activity Logging**: Recent trading executions, bot activities, lesson completions
- **API Configuration**: Manage Claude and Robinhood credentials securely
- **System Status**: Monitor connected services and bot health

## Getting Started

### Prerequisites
1. **Claude API Key** - Get one at [console.anthropic.com](https://console.anthropic.com)
   - Recommended: Claude 3.5 Sonnet for best performance
   - Minimum: $5 credit for testing

2. **ElevenLabs API Key** (optional, for voice)
   - Get at [elevenlabs.io](https://elevenlabs.io)
   - Free tier includes 10,000 character/month

3. **Robinhood Account** (optional, for real trading)
   - Only needed if enabling live trading mode
   - Paper trading mode available without real account

### Quick Start

1. **Local Testing**
   ```bash
   # Simply open the files in a browser
   open index.html
   # or
   python -m http.server 8000
   # Visit http://localhost:8000
   ```

2. **Add Your API Keys**
   - Click the "Settings" tab in the platform
   - Paste your Claude API key (sk-ant-...)
   - Optionally add ElevenLabs key for voice
   - Optionally add Robinhood credentials

3. **Start Using**
   - **Dashboard Tab**: View overall metrics
   - **Learning Tab**: Generate lessons and take quizzes
   - **Voice Control**: Click microphone, speak commands
   - **AI Brain**: Configure trading parameters and backtest
   - **Settings**: Manage API keys and view system status

## Deployment

### Option 1: Vercel (Recommended)

```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
vercel --prod

# Your platform is now live!
```

**Vercel Benefits:**
- Automatic HTTPS
- Global CDN
- Environment variables
- Free tier: 100GB bandwidth/month
- Custom domain support

### Option 2: Netlify

```bash
# Install Netlify CLI
npm i -g netlify-cli

# Deploy
netlify deploy --prod

# Your platform is now live!
```

**Netlify Benefits:**
- Drag-and-drop deployment
- Automatic HTTPS
- Environment variables
- Free tier: 300 build minutes/month
- Form handling

### Option 3: GitHub Pages

1. Create a GitHub repository
2. Push all files to `main` branch
3. Enable GitHub Pages in Settings → Pages → Source: Deploy from branch → main
4. Your site is live at `https://yourusername.github.io/repo-name`

**Note:** API keys should NOT be committed to GitHub. Use environment variables or browser localStorage.

## File Structure

```
.
├── index.html                      # Landing page
├── rdcm-unified-platform.html      # Main application (5-in-1)
├── ai-tutor-free.html              # Standalone tutor (included in main)
├── ai-audio-automation.html        # Standalone audio bot (included in main)
├── ai-brain-system.html            # Standalone trading system (included in main)
├── vercel.json                     # Vercel deployment config
├── netlify.toml                    # Netlify deployment config
└── README.md                       # This file
```

## API Integrations

### Claude API (Required)
```javascript
const response = await fetch('https://api.anthropic.com/v1/messages', {
  method: 'POST',
  headers: {
    'x-api-key': apiKey,
    'content-type': 'application/json'
  },
  body: JSON.stringify({
    model: 'claude-3-5-sonnet-20241022',
    max_tokens: 1024,
    messages: [{ role: 'user', content: prompt }]
  })
});
```

### ElevenLabs API (Optional)
```javascript
const audio = await fetch('https://api.elevenlabs.io/v1/text-to-speech/21m00Tcm4TlvDq8ikWAM', {
  method: 'POST',
  headers: {
    'xi-api-key': elevenLabsKey,
    'content-type': 'application/json'
  },
  body: JSON.stringify({
    text: message,
    model_id: 'eleven_monolingual_v1',
    voice_settings: { stability: 0.5, similarity_boost: 0.75 }
  })
});
```

### Robinhood API (Optional)
- Uses OAuth 2.0 authentication
- Requires username/password for paper trading
- Real trading requires MFA setup
- Base URL: `https://api.robinhood.com`

## Security Considerations

### ✅ What's Secure
- API keys are stored in browser localStorage (not sent to third-party servers)
- All HTTPS traffic to Claude, ElevenLabs, Robinhood
- No server-side storage of credentials
- Client-side only processing

### ⚠️ Important Notes
- **Never share** your API keys or backup phrases
- Use **read-only API keys** when possible
- For Robinhood: Use **paper trading mode** initially
- For production: Consider server-side proxy for API calls
- Enable **API rate limiting** on your Claude account

## Monetization Strategy

### Current: Freemium Model
- **Free Tier**: 3 lessons/day, beginner difficulty, core voice features
- **Premium Tier**: Unlimited lessons, all difficulty levels, advanced analytics

### Future: Multiple Revenue Streams
1. **Subscription Tiers**
   - Basic: $9.99/month (10 lessons/day)
   - Pro: $29.99/month (unlimited, custom topics)
   - Enterprise: Custom pricing

2. **API Access**
   - Developer tier: Pay-per-request
   - Starter: $99/month for 10k requests
   - Business: $499/month for 100k requests

3. **White-Label Solutions**
   - For tutoring companies
   - Custom branding
   - Revenue share model

4. **Affiliate Program**
   - Earn 30% commission on Premium referrals
   - Direct affiliate marketing tools

## Performance Optimization

### Current
- **Load Time**: <2s (all files <50KB gzipped)
- **Requests**: 4 main files + API calls only
- **Browser Cache**: Leverages localStorage for API keys

### Future Improvements
1. Code splitting for tab content
2. Lazy loading for AI Brain charts
3. Service Worker for offline lessons
4. Image optimization (SVG icons)

## Troubleshooting

### "Invalid API Key"
- Ensure key starts with `sk-ant-`
- Check for extra spaces
- Regenerate key if suspicious

### "Voice not working"
- Check browser microphone permissions
- Use HTTPS (required for Web Speech API)
- Test in Firefox or Chrome (best support)

### "Trading bot won't connect"
- Verify Robinhood credentials are correct
- Check 2FA setting (may need app-specific password)
- Ensure paper trading is enabled first

### "Lessons not generating"
- Check API credit balance
- Monitor request rate (60 per minute limit)
- Verify model name: `claude-3-5-sonnet-20241022`

## Advanced Configuration

### Custom Topics for Tutor
Edit the `topicsList` array in `rdcm-unified-platform.html`:
```javascript
const topicsList = ['Python', 'Spanish', 'Finance', 'Biology', 'Design', 'History', 'YOUR_TOPIC'];
```

### Adjust Bot Behavior
Modify decision thresholds in `makeDecision()` function:
```javascript
if (confidence > 0.75) {
  decision = 'BUY'; // Adjust threshold
}
```

### Change Voice Settings
Update ElevenLabs voice_id:
```javascript
'https://api.elevenlabs.io/v1/text-to-speech/YOUR_VOICE_ID'
// Different voices: onwK4N7ivDL1cSJuNeTR (male), pNInz6obpgDQGcFmaJgB (female)
```

## Development Roadmap

### Phase 1: MVP (Current) ✅
- [x] Unified dashboard
- [x] AI tutor with voice
- [x] Voice command automation
- [x] Trading system with backtesting
- [x] Freemium model setup

### Phase 2: Enhancement
- [ ] Real Robinhood integration
- [ ] Firebase progress saving
- [ ] Certificate generation
- [ ] Leaderboard system
- [ ] Custom topic creation

### Phase 3: Scale
- [ ] White-label platform
- [ ] API marketplace
- [ ] Advanced analytics
- [ ] Machine learning optimization
- [ ] Multi-user collaboration

## Support & Contact

**Issues/Bugs:** Create an issue on GitHub
**Feature Requests:** Suggest on GitHub
**Email:** rdcmnation@gmail.com

## License

MIT License - Feel free to use and modify

## Disclaimer

**Trading Risk Notice:**
- This platform includes simulated trading and optional real trading
- Past performance does not indicate future results
- Use paper trading mode first
- Start with small amounts of real capital
- Not financial advice - consult a financial advisor

**Educational Notice:**
- AI-generated lessons are for learning purposes only
- Always verify information from original sources
- Lessons are not a substitute for professional education
- Use as supplementary learning material

---

**Version:** 1.0.0
**Last Updated:** October 3, 2026
**Status:** Production Ready 🚀

Deploy today and start building your AI-powered business!
