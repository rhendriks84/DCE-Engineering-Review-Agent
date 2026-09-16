# GitHub Copilot Instructions

## Repository objective

Help maintain and improve the DCE Engineering Review Agent without weakening engineering governance, source traceability or human decision authority.

## Before making changes

Read these files where present:

1. `README.md`
2. `AGENTS.md`
3. `Prompt.md`
4. `Workflow.md` or `docs/Workflow.md`
5. `Architecture.md` or `docs/Architecture.md`
6. `Examples.md` or `docs/Examples.md`

## Engineering principles

- Reference-source confirmation is mandatory before definitive compliance assessment.
- Apply the documented source-precedence model.
- Preserve exact source, clause and revision traceability.
- Distinguish confirmed requirements, vendor statements, submitted evidence, apparent conflicts and engineering recommendations.
- Escalate specialist engineering judgement rather than making a final determination.
- Do not invent requirements, clauses, design values, approvals or precedents.
- Do not treat consultant comments as governing requirements.
- Preserve multidisciplinary interfaces and operational-resilience checks.
- Protect restricted security information.

## Content and terminology

- Use UK English.
- Use concise, technical and vendor-facing language for review comments.
- Prefer the verbs Provide, Confirm, Demonstrate, Clarify, Revise, Identify and Reconcile.
- Use one principal technical issue per comment.
- Avoid duplicate, administrative or unsupported preference comments.
- Use `Reference basis unresolved`, `Provisional assessment only`, and `DCE confirmation required` when appropriate.

## Repository changes

- Keep the core prompt maintainable and avoid embedding large static specification libraries.
- Put discipline-specific logic in modular skills or reference documents where practical.
- Update examples when prompt behaviour changes.
- Update the README when features or repository structure change.
- Run `powershell -ExecutionPolicy Bypass -File scripts/validate-repo.ps1` after changes.
- Do not claim validation passed unless the command was actually run successfully.

## Pull request response format

Summarise:

1. What changed.
2. Why it changed.
3. Governance or review-behaviour impact.
4. Validation performed.
5. Remaining limitations or follow-up decisions.
