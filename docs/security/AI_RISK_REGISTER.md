# AI Risk Register

| ID | Risk | Likelihood | Impact | Control | Status |
|---|---|---:|---:|---|---|
| R-001 | publication of secrets | medium | high | secret scan, review | open |
| R-002 | private raw data in repository | medium | high | sanitizing, `.gitignore` | open |
| R-003 | prompt injection | medium | medium | red teaming, input control | open |
| R-004 | wrong technical recommendation | medium | medium | human review, smoke test | open |
| R-005 | destructive automation | low | high | dry-run, manual approval | open |
| R-006 | unclear ownership | medium | medium | release review | open |
| R-007 | unsafe dependencies | medium | medium | dependency scan | open |
| R-008 | exaggerated portfolio claims | medium | medium | evidence, sober wording | open |
