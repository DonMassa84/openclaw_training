#!/usr/bin/env bash
set -Eeuo pipefail

REPO_URL="${1:-https://github.com/DonMassa84/openclaw_training.git}"

echo "==== PUSH OPENCLAW AI GOVERNANCE REPO ===="
echo "Remote: $REPO_URL"
date
echo

if [[ ! -d .git ]]; then
  git init
fi

git branch -M main

chmod +x scripts/openclaw_governance_check.sh
bash scripts/openclaw_governance_check.sh

git add .
git commit -m "docs: add OpenClaw AI governance and portfolio documentation" || true

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REPO_URL"
else
  git remote add origin "$REPO_URL"
fi

git push -u origin main
