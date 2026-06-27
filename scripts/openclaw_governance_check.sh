#!/usr/bin/env bash
set -Eeuo pipefail

echo "==== OPENCLAW GOVERNANCE CHECK ===="
date
echo

echo "== Required files =="
files=(
  "README.md"
  "SECURITY.md"
  ".gitignore"
  "docs/architecture.md"
  "docs/governance/AI_SAFETY_GOVERNANCE_CHECKLIST.md"
  "docs/governance/OPENCLAW_RELEASE_REVIEW.md"
  "docs/governance/AI_GOVERNANCE_MINI.md"
  "docs/security/AI_RISK_REGISTER.md"
  "docs/security/THREAT_MODEL_OpenClaw.md"
  "docs/local-ai-ops/CASE_STUDY_OpenClaw_Local_AI_Knowledge_Management.md"
  "docs/local-ai-ops/RUNBOOK_OpenClaw_Local_AI_Operations.md"
  "docs/portfolio/IT_Operations_Automation_Case_Study.md"
  ".github/pull_request_template.md"
)

missing=0
for f in "${files[@]}"; do
  if [[ -f "$f" ]]; then
    echo "[OK] $f"
  else
    echo "[MISSING] $f"
    missing=1
  fi
done

echo
echo "== Secret scan =="
grep -RInE "(api[_-]?key|secret|token|password|passwd|bearer|private_key|credentials)" .   --exclude-dir=.git   --exclude-dir=node_modules   --exclude-dir=.venv   --exclude='README.md'   --exclude='SECURITY.md'   --exclude='AI_SAFETY_GOVERNANCE_CHECKLIST.md'   --exclude='OPENCLAW_RELEASE_REVIEW.md'   --exclude='AI_GOVERNANCE_MINI.md'   --exclude='AI_RISK_REGISTER.md'   --exclude='THREAT_MODEL_OpenClaw.md'   --exclude='openclaw_governance_check.sh' || true

echo
echo "== Git status =="
git status --short 2>/dev/null || echo "[INFO] No git repository detected."

echo
if [[ "$missing" -eq 0 ]]; then
  echo "[RESULT] PASS: Governance documentation baseline complete."
else
  echo "[RESULT] FAIL: Required files missing."
  exit 1
fi
