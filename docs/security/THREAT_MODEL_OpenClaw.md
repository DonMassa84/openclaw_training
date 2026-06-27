# Threat Model: OpenClaw / Local AI Automation

## Assets

- local project data
- private documents
- API keys and tokens
- SSH and Git access
- GitHub repositories
- public portfolio documentation

## Attack Surfaces

| Area | Risk | Control |
|---|---|---|
| Git commit | secret leak | secret scan before commit |
| logs | personal data exposure | sanitizing and log minimization |
| LLM prompts | data leakage | no sensitive raw data |
| automation scripts | wrong system changes | dry-run, backup, human review |
| GitHub | public exposure | review, `.gitignore`, SECURITY.md |
| RAG index | private content in search index | separated public/private data zones |

## Minimum Release Control

```bash
bash scripts/openclaw_governance_check.sh
```
