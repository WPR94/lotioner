# lotioner
AI-powered relationship communication app - craft the perfect message to smooth things over

## Features

- 🤖 AI-powered message generation using OpenAI
- 💬 Craft perfect messages for relationship communication
- 🎨 Modern, responsive UI with Tailwind CSS
- 🔐 Secure authentication with Supabase
- 💳 Monetization ready with Stripe integration
- 📱 Mobile-friendly design

## Tech Stack

- **Framework**: Next.js 14 (App Router)
- **Language**: TypeScript
- **Styling**: Tailwind CSS
- **Database & Auth**: Supabase
- **AI**: OpenAI API
- **Payments**: Stripe
- **Deployment**: Vercel

## Quick Start

### Prerequisites

- Node.js 18+ installed
- npm or yarn package manager
- Supabase account
- OpenAI API key
- Stripe account (for monetization)

### Installation

1. **Clone the repository**

```bash
git clone https://github.com/WPR94/lotioner.git
cd lotioner
```

2. **Install dependencies**

```bash
npm install
```

3. **Generate app files**

Run the setup script to create all necessary source files:

```bash
chmod +x generate-app-files.sh
./generate-app-files.sh
```

4. **Set up environment variables**

Copy the `.env.example` file to `.env.local`:

```bash
cp .env.example .env.local
```

Then fill in your actual values in `.env.local`

5. **Run the development server**

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

## Configuration

See [SETUP.md](SETUP.md) for detailed setup instructions including:

- Supabase configuration
- OpenAI API setup
- Stripe integration
- Vercel deployment

## Project Structure

```
lotioner/
├── src/
│   ├── app/              # Next.js app directory
│   │   ├── layout.tsx    # Root layout
│   │   ├── page.tsx      # Home page
│   │   └── globals.css   # Global styles
│   ├── components/       # React components
│   └── lib/             # Utility functions
├── public/              # Static assets
└── generate-app-files.sh # Setup script
```

## Documentation

- [SETUP.md](SETUP.md) - Detailed setup guide
- [CODE.md](CODE.md) - Code structure and architecture

## License

MIT
