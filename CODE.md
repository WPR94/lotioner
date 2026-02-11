# Lotioner v2.0 - Complete Code Reference

This file contains links to all the complete code for the Lotioner app with full v2.0 monetization features.

## 🔗 Full Code Available Here

**Complete v2.0 Codebase with ALL Features:**
https://chatgpt.com/c/698c714a-8e08-8388-a423-67c4e17e355b

Scroll to the bottom of the conversation to see all code files formatted as copy-ready blocks.

## ✅ Fully Implemented Features

### Freemium Model
- 1 free fix per day (UTC)
- Automatic daily reset

### Credit Packs
- Starter: 7 credits - £2.99
- Popular: 25 credits - £7.99
- Whale: 80 credits - £19.99
- Chaos: 200 credits - £39.99

### Credit Sinks (Re-rolls + Boosts)
- Re-roll (new version): 1 credit
- Make it shorter: 1 credit
- Make it longer: 1 credit
- More confident: 1 credit
- More romantic: 1 credit
- Voice note script: 2 credits
- Apology + boundary combo: 2 credits

### Subscription
- £7.99/month unlimited
- Fair use limit: 50/day (configurable)
- Subscription status persisted in database

### Streamer Mode
- Toggle to hide names and identifying details
- Persisted in user profile
- Makes outputs demo-friendly

### Reply Analyzer
- Paste her reply → get analysis
- 1 credit per use
- Returns: summary, feelings, wants, next message, don'ts

### Quick Modes
- She's angry/cold
- I got defensive
- I forgot something important
- Jealousy/trust issue
- Scheduling/flake

## 📁 Complete File Structure

```
lotioner/
├── app/
│   ├── (auth)/
│   │   └── login/page.tsx
│   ├── account/page.tsx
│   ├── analyze/page.tsx
│   ├── drafts/page.tsx
│   ├── fix/page.tsx
│   ├── onboarding/page.tsx
│   ├── results/[id]/page.tsx
│   ├── api/
│   │   ├── fix/route.ts
│   │   ├── boost/route.ts
│   │   ├── analyze/route.ts
│   │   └── credits/route.ts
│   ├── globals.css
│   ├── layout.tsx
│   └── page.tsx
├── components/
│   ├── AuthButton.tsx
│   ├── DraftCard.tsx
│   ├── Footer.tsx
│   ├── Navbar.tsx
│   ├── PricingCard.tsx
│   ├── ResultCard.tsx
│   ├── SignOutButton.tsx
│   ├── Toast.tsx
│   └── Toggle.tsx
├── lib/
│   ├── openai/
│   │   ├── prompt.ts
│   │   └── schema.ts
│   ├── supabase/
│   │   ├── admin.ts
│   │   ├── client.ts
│   │   ├── middleware.ts
│   │   └── server.ts
│   └── utils/
│       ├── date.ts
│       ├── id.ts
│       └── ui.ts
├── types/
│   ├── db.ts
│   └── lotioner.ts
├── supabase/
│   └── schema.sql
├── middleware.ts
├── package.json
├── .env.example
├── next.config.mjs
├── postcss.config.js
├── tailwind.config.ts
├── tsconfig.json
└── README.md
```

## 🗄️ Database Schema

Complete SQL schema includes:
- profiles (with streamer_mode)
- credits
- credit_transactions
- subscriptions
- usage_daily (free fix + subscription fair use)
- fix_requests (with quick_mode, streamer_mode)
- fix_responses (supports variants/boosts)
- reply_analyses
- drafts

## 🚀 Usage for GitHub Copilot

1. Open the ChatGPT link above
2. Scroll to see all code files
3. Copy the code blocks you need
4. GitHub Copilot can reference this repo structure
5. Point Copilot to specific files by path

## 📝 Next Steps

1. Clone this repo
2. Install dependencies: `npm install`
3. Copy code from ChatGPT link
4. Set up Supabase project
5. Run schema.sql in Supabase
6. Configure .env.local
7. Run: `npm run dev`

## 💳 Payment Integration (To Do)

The credit pack purchases are currently demo endpoints. To integrate real payments:

1. Add Stripe SDK
2. Create Stripe Checkout sessions
3. Set up webhook endpoint
4. Verify payment in webhook
5. Call `/api/credits` securely from webhook
6. Handle subscription management

## 🎯 Credit System Logic

All usage flows through `ensureUsageAndConsume()` in `lib/utils/date.ts`:

1. **Subscribers**: Fair use limit (50/day)
2. **Free users**: 1 free fix/day (UTC reset)
3. **Paid credits**: Deducted after free fix used
4. **Boosts/Analyzer**: Always costs credits (or subscription fair use)

---

**For complete code implementation, visit:**
https://chatgpt.com/c/698c714a-8e08-8388-a423-67c4e17e355b
