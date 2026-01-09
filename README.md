# EcoByte

EcoByte is an enterprise-grade platform designed to measure, analyze, and optimize the carbon footprint of digital applications.

## Architecture Overview

This project utilizes a modern, type-safe full-stack architecture designed for performance, scalability, and security.

### Frontend Architecture

The frontend is built on **SvelteKit**, leveraging the latest advancements in the Svelte ecosystem.

- **Svelte 5**: We utilize Svelte 5 with **Runes** (`$state`, `$derived`, `$effect`) for fine-grained reactivity. This approach ensures optimal performance by updating only the DOM elements that change, significantly reducing the runtime overhead compared to traditional virtual DOM frameworks.
- **Better Auth**: Authentication is handled by **Better Auth**, providing a secure, session-based authentication system. It integrates seamlessly with our backend to support email/password and OAuth providers (e.g., Microsoft) with strictly typed client-side hooks.
- **Drizzle ORM**: While primarily a backend tool, Drizzle is tightly integrated into our SvelteKit server loaders (`+page.server.ts`). This allows our frontend to consume fully typed data objects directly from the database schema, ensuring end-to-end type safety from the SQL query to the UI component.

### Backend & Infrastructure

The backend data layer and infrastructure are designed for reliability and enterprise deployment.

- **PostgreSQL**: Our primary data store is **PostgreSQL**, chosen for its ACID compliance, robust concurrent performance, and rich ecosystem. It serves as the single source of truth for user data, analytics, and platform configurations.
- **Docker**: The entire application stack is containerized using **Docker**. This ensures:
  - **Reproducibility**: Development, staging, and production environments are identical.
  - **Scalability**: Services can be orchestrated and scaled horizontally using Docker Swarm or Kubernetes.
  - **Isolation**: Dependencies are encapsulated, preventing environment configuration conflicts.

## Development

```bash
# Install dependencies
bun install

# Start development server
bun dev
```

## Build

```bash
# Build for production
bun run build
```
