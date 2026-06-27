# AI Safety & Governance Checklist

## Purpose

Reusable control framework for OpenClaw, Local AI, RAG and automation workflows.

Goal: technical traceability, safe publication, human review and portfolio-grade documentation without secrets or private raw data.

## 1. Red Teaming

**Control question:** Was the system actively tested for misuse, wrong outputs, prompt injection or bypassing safeguards?

Minimum evidence:

- known failure cases tested
- prompt injection risk checked
- data leakage risk checked
- destructive actions blocked or manually approved

## 2. Affirmative Demonstration of Safety

**Control question:** Can the workflow actively demonstrate safe behavior under normal conditions?

Minimum evidence:

- smoke test available
- sanitized sample output
- no secrets in output
- no private raw data in repository
- human review before publication

## 3. Deployment Procedures

Minimum evidence:

- installation steps documented
- rollback/fallback described
- dependencies listed
- no blind installation without review

## 4. Publication Reviews

Minimum evidence:

- secret scan performed
- screenshots checked
- private names and raw logs removed
- authority, health and finance data excluded
- README checked for misleading claims

## 5. Response Plans

Minimum evidence:

- repository can be made private if needed
- affected secrets can be rotated
- faulty content can be removed
- incident can be documented
- prevention rule can be added

## 6. Internal Auditing & Risk Management

Minimum evidence:

- review date set
- open risks documented
- responsible person defined
- recurring audit rhythm defined

## 7. Processes for Important Decisions

Minimum evidence:

- decision criteria documented
- risk and benefit assessed
- human approval for critical actions
- no risky automation without approval

## 8. Safe Design Principles

Minimum evidence:

- minimal data use
- local processing preferred
- clear system boundaries
- no unnecessary cloud exposure
- safe defaults

## 9. State-of-the-Art Information Security

Minimum evidence:

- secret scan
- dependency check
- least privilege
- `.gitignore`
- no credentials in code
- safe update and backup logic

## 10. Safety-Focused Research Allocation

Minimum evidence:

- reserve 20–30% of project time for testing, review, security and documentation
- document failure cases
- add lessons learned to runbooks

## Release Gate

A module is portfolio-ready only if:

- [ ] purpose described
- [ ] architecture described
- [ ] data flow described
- [ ] risks described
- [ ] human review defined
- [ ] secret scan performed
- [ ] no private raw data included
- [ ] smoke test available
- [ ] fallback described
- [ ] README updated
