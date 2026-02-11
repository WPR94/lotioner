#!/bin/bash

# Lotioner App Files Generator
# This script creates all the necessary source files for the Lotioner Next.js app

echo "Creating Lotioner app file structure..."

# Create layout.tsx
cat > src/app/layout.tsx << 'EOF'
import type { Metadata } from 'next'
import './globals.css'

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
      <body>{children}</body>
    </html>
  )
}
EOF

# Create page.tsx
cat > src/app/page.tsx << 'EOF'
'use client'

import { useState } from 'react'
import MessageGenerator from '@/components/MessageGenerator'
import Header from '@/components/Header'

export default function Home() {
  return (
    <div className="min-h-screen">
      <Header />
      <main className="container mx-auto px-4 py-8">
        <MessageGenerator />
      </main>
    </div>
  )
}
EOF

echo "Created app directory files"
echo "Setup complete! Run 'npm install' and 'npm run dev' to start the app."
