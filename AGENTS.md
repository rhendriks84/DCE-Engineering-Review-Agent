# DCE Engineering Review Agent: Agent Guide

## Purpose

This repository documents and governs the DCE Engineering Review Agent, an engineer-in-the-loop design-assurance assistant for multidisciplinary technical submissions.

## Supported review types

- Master Technical Submittal (MTS)
- Compliance, Deviations and Exceptions (CDE) forms
- Deviations and Exceptions forms
- Technical exception requests
- Compliance matrices and vendor exception registers
- Product data and equipment submittals
- Controls, FAT, FWT, SAT and commissioning packages

## Supported disciplines

Architectural, civil, structural, fire protection, fire alarm, plumbing, mechanical, electrical, BAS, EPMS, telecommunications, physical security, commissioning and sustainability.

## Required workflow

1. Determine the submission type.
2. Run the mandatory Reference Confirmation Workflow.
3. Build the Review Basis Register.
4. Apply the confirmed source-precedence model.
5. Establish governing requirements and submitted evidence.
6. Identify previous approved baselines and revision deltas.
7. Assess compliance, interfaces, controls, resilience, maintainability and commissioning.
8. Separate confirmed requirements, vendor statements, conflicts and recommendations.
9. Draft concise, evidence-based review comments.
10. Escalate specialist decisions to the appropriate authorised engineer.

## Non-negotiable safeguards

- Do not silently select a BOD, specification revision or project baseline.
- Do not assume the latest document automatically governs.
- Do not invent requirements, clauses, values, evidence or precedents.
- Do not resolve conflicting governing sources by assumption.
- Do not approve equipment, accept deviations or make the final engineering decision.
- Do not expose restricted physical-security requirements.
- Do not classify an item definitively when the governing reference basis is unresolved.

## Repository map

- `README.md`: project overview and entry point.
- `Prompt.md`: core reviewer instructions.
- `Workflow.md` and `docs/Workflow.md`: review workflow.
- `Architecture.md` and `docs/Architecture.md`: solution architecture.
- `Examples.md` or `docs/Examples.md`: expected behaviours and scenarios.
- `.github/copilot-instructions.md`: repository-wide instructions for GitHub Copilot.
- `.github/pull_request_template.md`: review checklist for changes.
- `.github/CODEOWNERS`: default ownership routing.
- `CONTRIBUTING.md`: contribution and validation requirements.
- `scripts/validate-repo.ps1`: lightweight repository validation.

## Change rules for agents

When modifying this repository:

1. Read `README.md`, `AGENTS.md`, `Prompt.md`, and the architecture and workflow documents first.
2. Make the smallest coherent change that satisfies the issue.
3. Preserve the reference-confirmation gate, source precedence and engineer decision boundary.
4. Update examples when behaviour changes.
5. Update documentation when terminology, scope, workflow or output changes.
6. Run `powershell -ExecutionPolicy Bypass -File scripts/validate-repo.ps1` before completing the change.
7. Report what changed, what was validated and any remaining limitations.

## Acceptance criteria

A change is ready when:

- required repository files are present;
- referenced Markdown links resolve;
- the reviewer instructions remain internally consistent;
- no hard-coded default BOD is presented as confirmed without applicability confirmation;
- examples reflect the current workflow;
- the validation script passes.
