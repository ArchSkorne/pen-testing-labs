#!/usr/bin/env bash
set -euo pipefail

# 123.sh - safe repo sync script (POSIX)
# Behavior:
# 1) cd to script directory
# 2) git fetch && git rebase origin/main (abort automatic commit on failure)
# 3) stage changes and only commit if changes are staged
# 4) push to origin/main

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "Fetching and rebasing from origin/main..."
git fetch origin
if ! git rebase origin/main; then
  echo "Rebase failed. Please resolve conflicts, commit or stash local changes, then re-run this script." >&2
  exit 1
fi

echo "Checking for local changes to commit..."
# Stage everything but only commit if there are staged changes
git add -A
if git diff --cached --quiet; then
  echo "No changes to commit."
else
  # Attempt commit; if commit fails for any reason, print a warning but continue to push
  if ! git commit -m "Auto-sync"; then
    echo "Warning: commit failed. Please check 'git status' and commit manually." >&2
  fi
fi

echo "Pushing to origin/main..."
git push origin main

echo "Sync complete."

# Note: this repo uses `monthly-progress.md` and `Month*` folders; update any scripts that reference old `weekly` names.
