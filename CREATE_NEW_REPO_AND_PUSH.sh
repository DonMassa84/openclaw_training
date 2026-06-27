#!/usr/bin/env bash
set -Eeuo pipefail

REPO_NAME="${1:-openclaw-ai-governance}"
VISIBILITY="${2:-public}"

if ! command -v gh >/dev/null 2>&1; then
  echo "[FAIL] GitHub CLI 'gh' not found. Install with: sudo apt install gh"
  exit 1
fi

gh auth status

if gh repo view "DonMassa84/$REPO_NAME" >/dev/null 2>&1; then
  echo "[INFO] Repo exists: DonMassa84/$REPO_NAME"
else
  gh repo create "DonMassa84/$REPO_NAME" --"$VISIBILITY" --description "Sanitized OpenClaw AI governance, Local AI operations and automation portfolio documentation"
fi

bash PUSH_TO_GITHUB.sh "https://github.com/DonMassa84/$REPO_NAME.git"
