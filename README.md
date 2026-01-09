# EcoByte

Carbon footprint estimator for digital service delivery.

## Development

```bash
# Install dependencies
bun install

# Start development server
bun dev
```

## Environment Variables

Copy `.env.example` to `.env` and configure:

```bash
cp .env.example .env
```

Required variables:

| Variable | Description |
|----------|-------------|
| `DATABASE_URL` | PostgreSQL connection string |
| `BETTER_AUTH_SECRET` | Secret key for authentication |
| `BETTER_AUTH_URL` | Base URL for auth callbacks |
| `ORIGIN` | Application URL (required in production) |

## Database

Run migrations:

```bash
bun run dev
```

## Build

```bash
bun run build
```

## Docker Deployment

### Build the image

```bash
docker build -t ecobyte-frontend .
```

### Run with Docker Compose

1. Create a `.env` file with your configuration:

```bash
# Database
POSTGRES_USER=ecobyte
POSTGRES_PASSWORD=your-secure-password
POSTGRES_DB=ecobyte

# Auth
BETTER_AUTH_SECRET=generate-a-secure-random-string
BETTER_AUTH_URL=http://localhost:3000

# App
ORIGIN=http://localhost:3000
```

2. Start the services:

```bash
docker compose up -d
```

The application will be available at `http://localhost:3000`.

### Production

For production, update your `.env`:

```bash
ORIGIN=https://yourdomain.com
BETTER_AUTH_URL=https://yourdomain.com
```

## Tech Stack

- **Framework**: SvelteKit with Svelte 5
- **Database**: PostgreSQL with Drizzle ORM
- **Auth**: Better Auth
- **Styling**: Tailwind CSS v4 + shadcn-svelte
- **Runtime**: Bun
