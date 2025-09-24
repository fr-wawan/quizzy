#!/usr/bin/env sh
set -e

# Only create tmux session if it doesn't exist yet
if ! tmux has-session -t dev 2>/dev/null; then
  tmux new-session -d -s dev "pnpm --filter frontend-quizzy dev"
  tmux new-window -t dev:1 "pnpm --filter backend-quizzy start:dev"
fi
