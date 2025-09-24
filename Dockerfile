FROM node:20-alpine

# Install pnpm and tmux
RUN apk add --no-cache tmux \
    && npm install -g pnpm

WORKDIR /workspace


# Create workspace dir
WORKDIR /workspace
