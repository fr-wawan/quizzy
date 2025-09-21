FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy monorepo root package files to leverage pnpm workspace caching
COPY package.json pnpm-workspace.yaml pnpm-lock.yaml ./

# Install dependencies
RUN npm install -g pnpm \
    && pnpm install --frozen-lockfile

# Copy backend source code
COPY apps/backend ./apps/backend
COPY packages/shared ./packages/shared

WORKDIR /app/apps/backend

EXPOSE 3000

# Use dev command for live reload
CMD ["pnpm", "dev"]
