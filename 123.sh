#!/usr/bin/env bash
set -euo pipefail

# 123.sh - simple repo sync script (POSIX)
# Behavior:
# 1) cd to script directory
# 2) git pull --rebase origin main
# 3) git add -A; git commit -m "Auto-sync" || true
# 4) git push origin main

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Attempt to pull with rebase; if it fails due to local changes, exit with message
if ! git pull --rebase origin main; then
  echo "Pull with rebase failed. Please commit or stash local changes, or run with --force-commit to force a commit."
  exit 1
fi

# Stage all changes and commit if there are staged changes
if git add -A && git diff --cached --quiet; then
  echo "No changes to commit."
else
  # Try to commit; if commit fails because there's nothing to commit, continue
  git commit -m "Auto-sync" || true
fi

# Push changes
git push origin main

echo "Sync complete."
