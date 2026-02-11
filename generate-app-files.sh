#!/bin/bash
# Lotioner App Files Generator - Full Build v2.0
echo "Creating Lotioner app file structure..."

mkdir -p src/app src/components src/lib public

# Root Layout
cat > src/app/layout.tsx << 'EOF'
import type { Metadata } from 'next'
import './globals.css'
import { Toaster } from 'react-hot-toast'

export const metadata: Metadata = {
  title: 'Lotioner - AI Relationship Communication',
  description: 'Craft the perfect message to smooth things over',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <body className="bg-zinc-950 text-zinc-100">
        <Toaster position="bottom-right" />
        {children}
      </body>
    </html>
  )
}
EOF

# Global CSS
cat > src/app/globals.css << 'EOF'
@tailwind base;
@tailwind components;
@tailwind utilities;

:root {
  --foreground-rgb: 255, 255, 255;
  --background-start-rgb: 10, 10, 10;
  --background-end-rgb: 0, 0, 0;
}

body {
  color: rgb(var(--foreground-rgb));
  background: linear-gradient(
      to bottom,
      transparent,
      rgb(var(--background-end-rgb))
    )
    rgb(var(--background-start-rgb));
}
EOF

# Home Page
cat > src/app/page.tsx << 'EOF'
import Header from '@/components/Header'
import MessageGenerator from '@/components/MessageGenerator'
import Pricing from '@/components/Pricing'

export default function Home() {
  return (
    <div className="min-h-screen">
      <Header />
      <main className="container mx-auto px-4 py-12 space-y-24">
        <section id="generator">
          <MessageGenerator />
        </section>
        <section id="pricing">
          <Pricing />
        </section>
      </main>
      <footer className="border-t border-zinc-800 py-8 text-center text-zinc-500 text-sm">
        © 2024 Lotioner AI. All rights reserved.
      </footer>
    </div>
  )
}
EOF

# Header Component
cat > src/components/Header.tsx << 'EOF'
'use client'
import Link from 'next/link'

export default function Header() {
  return (
    <header className="border-b border-zinc-800 sticky top-0 bg-black/50 backdrop-blur-md z-50">
      <div className="container mx-auto px-4 h-16 flex items-center justify-between">
        <div className="flex items-center gap-2">
          <div className="w-8 h-8 bg-red-500 rounded-lg flex items-center justify-center font-bold">L</div>
          <span className="font-bold text-xl tracking-tight">Lotioner</span>
        </div>
        <nav className="hidden md:flex items-center gap-8 text-sm font-medium text-zinc-400">
          <Link href="#generator" className="hover:text-white transition-colors">Generator</Link>
          <Link href="#how-it-works" className="hover:text-white transition-colors">How it works</Link>
          <Link href="#pricing" className="hover:text-white transition-colors">Pricing</Link>
        </nav>
        <button className="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-full text-sm font-bold transition-all">
          Start now
        </button>
      </div>
    </header>
  )
}
EOF

# Message Generator Component
cat > src/components/MessageGenerator.tsx << 'EOF'
'use client'
import { useState } from 'react'
import { toast } from 'react-hot-toast'

export default function MessageGenerator() {
  const [prompt, setPrompt] = useState('')
  const [result, setResult] = useState('')
  const [loading, setLoading] = useState(false)

  const handleGenerate = async () => {
    if (!prompt) return toast.error('Please describe what happened')
    setLoading(true)
    try {
      // Mock API call for local testing
      await new Promise(r => setTimeout(r, 1500))
      setResult("I'm sorry things felt a bit tense earlier. I really value our communication and wanted to reach out to clear the air. I care about you and want to make sure we're on the same page.")
      toast.success('Message smoothed!')
    } catch (e) {
      toast.error('Something went wrong')
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className="max-w-3xl mx-auto bg-zinc-900 border border-zinc-800 rounded-3xl overflow-hidden shadow-2xl">
      <div className="p-8">
        <h2 className="text-red-500 font-bold uppercase tracking-widest text-sm mb-2">Message Generator</h2>
        <h1 className="text-3xl font-bold mb-6">Turn rough moments into thoughtful replies.</h1>
        <div className="space-y-6">
          <div>
            <label className="block text-sm font-medium text-zinc-400 mb-2">What happened?</label>
            <textarea 
              className="w-full bg-black border border-zinc-800 rounded-xl p-4 h-32 focus:ring-2 focus:ring-red-500 outline-none transition-all"
              placeholder="Describe the situation and what you want to communicate..."
              value={prompt}
              onChange={(e) => setPrompt(e.target.value)}
            />
          </div>
          <button 
            onClick={handleGenerate}
            disabled={loading}
            className="w-full bg-red-500 hover:bg-red-600 disabled:bg-zinc-800 py-4 rounded-xl font-bold transition-all"
          >
            {loading ? 'Smoothing...' : 'Generate Smooth Response'}
          </button>
        </div>
      </div>
      {result && (
        <div className="bg-zinc-800/50 p-8 border-t border-zinc-800 animate-in fade-in slide-in-from-bottom-4 duration-500">
          <p className="text-zinc-300 leading-relaxed italic">"{result}"</p>
          <button 
            onClick={() => {
              navigator.clipboard.writeText(result)
              toast.success('Copied to clipboard')
            }}
            className="mt-4 text-xs font-bold uppercase tracking-widest text-red-500 hover:text-red-400"
          >
            Copy message
          </button>
        </div>
      )}
    </div>
  )
}
EOF

# Pricing Component
cat > src/components/Pricing.tsx << 'EOF'
export default function Pricing() {
  const tiers = [
    { name: 'Starter', price: 'Free', features: ['5 messages/month', 'Standard vibes', 'Community support'], button: 'Get Started' },
    { name: 'Pro', price: '$12', features: ['Unlimited messages', 'All posh vibes', 'Priority support', 'Voice cloning'], button: 'Go Pro', featured: true },
    { name: 'Team', price: '$49', features: ['5 seats included', 'Shared templates', 'API access'], button: 'Contact Sales' }
  ]

  return (
    <div className="space-y-12">
      <div className="text-center">
        <h2 className="text-3xl font-bold">Simple, transparent pricing.</h2>
        <p className="text-zinc-400 mt-4">Choose the plan that's right for your relationship.</p>
      </div>
      <div className="grid md:grid-cols-3 gap-8">
        {tiers.map((tier) => (
          <div key={tier.name} className={`p-8 rounded-3xl border ${tier.featured ? 'border-red-500 bg-zinc-900 shadow-xl' : 'border-zinc-800 bg-zinc-900/50'} flex flex-col`}>
            <h3 className="text-xl font-bold">{tier.name}</h3>
            <div className="mt-4 mb-8">
              <span className="text-4xl font-bold">{tier.price}</span>
              {tier.price !== 'Free' && <span className="text-zinc-500">/mo</span>}
            </div>
            <ul className="space-y-4 mb-8 flex-1">
              {tier.features.map(f => (
                <li key={f} className="text-zinc-400 flex items-center gap-2 text-sm">
                  <div className="w-1.5 h-1.5 rounded-full bg-red-500" /> {f}
                </li>
              ))}
            </ul>
            <button className={`w-full py-3 rounded-xl font-bold transition-all ${tier.featured ? 'bg-red-500 hover:bg-red-600' : 'bg-zinc-800 hover:bg-zinc-700'}`}>
              {tier.button}
            </button>
          </div>
        ))}
      </div>
    </div>
  )
}
EOF

echo "All app files generated. Run 'npm install' then 'npm run dev' to launch Lotioner."
