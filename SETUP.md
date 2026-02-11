# Lotioner - Complete Setup Guide

## 🎯 What You're Building
AI-powered relationship communication app using Next.js 14, TypeScript, Supabase, OpenAI, and Vercel.

## 📦 ONE-WEEK EXECUTION PLAN

### Day 1: Clone & Install (15 minutes)
```bash
git clone https://github.com/WPR94/lotioner.git
cd lotioner
npm install
```

### Day 2: Accounts Setup (30 minutes)
1. **Supabase**: Create project at supabase.com
2. **OpenAI**: Get API key from platform.openai.com
3. **Vercel**: Connect GitHub repo at vercel.com

### Day 3: Database Setup (15 minutes)
Go to ChatGPT conversation (link below) and get the database schema SQL. Run it in Supabase SQL editor.

### Day 4: Environment Variables (10 minutes)
Create `.env.local` file:
```
NEXT_PUBLIC_SUPABASE_URL=your_supabase_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_anon_key
SUPABASE_SERVICE_ROLE_KEY=your_service_role_key
OPENAI_API_KEY=your_openai_key
OPENAI_MODEL=gpt-4o-mini
```

### Day 5-6: Add All Code Files
Get ALL the code from ChatGPT (link below). You'll create these files:

**Core Files:**
- `app/layout.tsx` - Main layout
- `app/page.tsx` - Homepage  
- `app/globals.css` - Tailwind styles
- `lib/supabase/client.ts` - Supabase client
- `app/api/fix/route.ts` - OpenAI API endpoint

**Pages:**
- `app/onboarding/page.tsx` - User profile
- `app/fix/page.tsx` - Main form
- `app/results/[id]/page.tsx` - AI results
- `app/drafts/page.tsx` - Saved messages
- `app/account/page.tsx` - User settings

**Your GitHub Copilot will auto-complete most of this!**

### Day 7: Deploy & Test
```bash
npm run dev
# Test locally at http://localhost:3000
```

Push to GitHub → Vercel auto-deploys.

## 🔗 GET ALL THE CODE HERE

**ChatGPT Conversation with Complete Codebase:**
https://chatgpt.com/c/698c714a-8e08-8388-a423-67c4e17e355b

This conversation has:
- ✅ Full folder structure  
- ✅ Every file's complete code
- ✅ Database schema SQL
- ✅ TypeScript types  
- ✅ Tailwind styling
- ✅ OpenAI integration

- **✨ UPDATED (v2.0) - FULL MONETIZATION:**

This conversation includes ALL features from the original business plan:
- ✅ Freemium model: 1 free fix/day  
- ✅ Credit packs: £2.99 (7), £7.99 (25), £19.99 (80), £39.99 (200)
- ✅ Credit sinks: Re-rolls + boosts (1-2 credits each)
- ✅ Subscription: £7.99/month unlimited
- ✅ Streamer Mode toggle
- ✅ Reply Analyzer (1 credit)
- ✅ Quick Modes presets

**Original strategy:** https://chatgpt.com/c/698b063d-2884-8395-aedd-26dae6d52d21

## 🚀 Quick Start Commands

```bash
# After cloning and setting up .env.local:
npm install
npm run dev
```

## 💡 GitHub Copilot Tips

When creating files, just type the path and Copilot will suggest the content:

1. Create `app/layout.tsx`
2. Type: `// Lotioner main layout`
3. Copilot suggests the full component
4. Accept with Tab

Repeat for each file from the ChatGPT conversation.

## 🎨 What's Included

- ✅ User authentication (Supabase)
- ✅ Profile/onboarding flow
- ✅ "Fix a Message" AI generator
- ✅ Credits system (1 free/day + paid packs)
- ✅ Save drafts
- ✅ Beautiful Tailwind UI
- ✅ Production-ready structure

## 📝 Next Steps After Setup

1. Test the full flow: signup → onboard → generate message
2. Add Stripe for paid credits (follow Stripe + Next.js docs)
3. Customize the AI prompt in `lib/openai/prompt.ts`
4. Deploy to production via Vercel
5. Set custom domain

## ⚡ Pro Tips

- **Use the ChatGPT link above** - it has EVERYTHING
- Copy files one by one from ChatGPT
- Copilot will help you fill in similar patterns
- Test after adding each major feature
- Commit often to GitHub

## 🆘 If You Get Stuck

1. Check the ChatGPT conversation - all code is there
2. Verify .env.local has all variables
3. Run `npm install` again
4. Clear Next.js cache: `rm -rf .next`

## 📊 Project Structure

```
lotioner/
├── app/              # Next.js 14 app router
│   ├── (auth)/       # Auth pages
│   ├── api/          # API routes
│   ├── fix/          # Main form
│   └── results/      # AI output
├── components/       # React components  
├── lib/              # Utilities
│   ├── supabase/     # DB client
│   └── openai/       # AI integration
└── types/            # TypeScript types
```

---

## 🎯 Ready to Build?

1. Go to the ChatGPT link above
2. Copy all the code
3. Create the files in VS Code
4. Run `npm run dev`
5. You're live! 🚀

GitHub Copilot + the ChatGPT conversation = you'll have this done in a week, zero experience needed.
