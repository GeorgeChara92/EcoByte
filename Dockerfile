# Build Stage
FROM oven/bun:1-alpine AS builder
WORKDIR /app
COPY package.json bun.lock ./
RUN bun install --frozen-lockfile
COPY . .
RUN bun run build && bun install --production --frozen-lockfile
RUN mkdir -p /app/drizzle

# Production Stage
FROM oven/bun:1-alpine
LABEL name="Ecobyte" \
    description="Ecobyte Application"

WORKDIR /app

# Copy build output and production dependencies
COPY --from=builder /app/build /app/build
COPY --from=builder /app/node_modules /app/node_modules
COPY --from=builder /app/package.json /app/package.json

# Copy drizzle migrations if they exist
COPY --from=builder /app/drizzle /app/drizzle

# Add entrypoint script
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["node", "/app/build/index.js"]
