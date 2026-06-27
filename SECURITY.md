# Security Policy

## Scope

This repository documents local AI, automation and IT operations workflows.

It must not contain:

- API keys, tokens, passwords or credentials
- private raw logs
- full e-mails or message exports
- authority, health or finance documents
- personal archives
- screenshots with private information

## Required Control

Before every public commit:

```bash
bash scripts/openclaw_governance_check.sh
```

## Incident Response

If a secret or private data is committed:

1. Immediately make the repository private or restrict access.
2. Rotate affected secrets.
3. Remove the affected content.
4. Document the incident in sanitized form.
5. Add a prevention rule to the governance checklist.
