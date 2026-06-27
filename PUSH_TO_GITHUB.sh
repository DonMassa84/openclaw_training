#!/usr/bin/env bash
set -Eeuo pipefail
REPO_URL="${1:-https://github.com/DonMassa84/openclaw_training.git}"
git init
git branch -M main
bash scripts/openclaw_governance_check.sh
git add .
git commit -m "docs: add OpenClaw AI governance and portfolio documentation" || true
git remote remove origin 2>/dev/null || true
git remote add origin "$REPO_URL"
git push -u origin main
